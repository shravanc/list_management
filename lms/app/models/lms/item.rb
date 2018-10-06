module Lms
  class Item < ApplicationRecord
    has_many :item_lists
    has_many :lists, -> {order 'lms_item_lists.number'}, through: :item_lists

    has_many :item_media
    has_many :media, through: :item_media

    has_many :app_items
    has_many :apps, -> { distinct }, through: :app_items

    def items_attributes
      [:id, :title, :description] 
    end

    def medias
      media.as_json(only: [:id, :title])
    end

    def applications
      apps.as_json(only: [:id, :title])
    end

    def index
      { items: Item.all.as_json(only: items_attributes, methods: [:medias, :applications] ) }
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
      apps = params.require(:item).permit([ apps: [] ])["apps"]


      app_items_params = apps.map{|a1| {app_id: a1, item_id: item.id} } if apps
      logger.debug app_items_params
      item.app_items.create(app_items_params)
      return [true, {message: "item updated successfully"}]
    end

  end
end
