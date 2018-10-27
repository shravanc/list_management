module Lms
  class Item < ApplicationRecord
    has_many :item_lists
    has_many :lists,  -> { distinct },through: :item_lists
#  default_scope order(:number)

    has_many :item_media
    has_many :media, through: :item_media

    has_many :app_items
    has_many :apps, -> { distinct }, through: :app_items

    #callbacks
    before_create :set_slug

    def items_attributes
      [:id, :title, :description] 
    end

    # def medias
    #   media.as_json(only: [:id, :title])
    # end

    # def applications
    #   apps.as_json(only: [:id, :title])
    # end

    def index
      return { items: Item.all.as_json(only: items_attributes, include: [{media: {only: [:id, :title]}}, {apps: {only: [:id, :title]}}] ) }

      # { items: Item.all.as_json(only: items_attributes, methods: [:medias, :applications] ) }
    end

    def create params
      item = Item.new(params[:item].as_json)
      item.save
      message = { message: 'item created succesfully'}
      return [ true, message ]

    end

    def update params
      item = Item.find(params[:id])
      item.update_attributes(params.require(:item).permit([:title, :description]))
      apps_data  = params.require(:item).permit([ apps: [] ])["apps"]
      media_data = params.require(:item).permit([ media: [] ])["media"]
      
      if apps_data
        app_items_params = apps_data.map{|a1| {app_id: a1, item_id: item.id} }
        item.app_items.create(app_items_params)
      end

      if media_data
        item_medium_params = media_data.map{|m| {medium_id: m, item_id: item.id}}
        item.item_media.create(item_medium_params)
      end
      return [true, {message: "item updated successfully"}]
    end

  end
end
