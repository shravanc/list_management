module Lms
  class List < ApplicationRecord
    has_many :item_lists
    has_many :items, -> { order('lms_item_lists.number') }, through: :item_lists

    has_many :list_layouts
    has_many :layouts, -> { distinct }, through: :list_layouts

    has_many :list_media
    has_many :media, through: :list_media

    has_many :app_lists
    has_many :apps, through: :app_lists

#GET

    def list_attributes
      [:id, :title]
    end

    def index
      { lists: List.all.as_json(only: list_attributes, include: [ {media: {only: [:id, :title]}}, { layouts: { only: [:id, :title]}}, { items: {only: [:id, :title] } } ] ) }
    end

#POST
    def create params
      list = List.new(params[:list].as_json)
      list.save

      message = { message: 'list created succesfully'}
      return [ true, message ]

    end


#PUT
    def update params
      list = List.find(params[:id])

      list.update_attributes(params.require(:list).permit([:title, :description]))
      item_data   = params.require(:list).permit([ items: [:item_id, :number] ])["items"]
      layout_data = params.require(:list).permit([layouts: []])["layouts"]
      media_data  = params.require(:list).permit([media: []])["media"]

      if item_data
        item_lists_params = item_data.map{|a1| {item_id: a1["item_id"], list_id: list.id, number: a1["number"]} }
        list.item_lists.create(item_lists_params)
      end

      if layout_data
        list_layouts_params = layout_data.map{|la| {layout_id: la, list_id: list.id}}
        list.list_layouts.create(list_layouts_params)
      end

      if media_data
        list_medium_params = media_data.map{|m| {medium_id: m, list_id: list.id}}
        list.list_media.create(list_medium_params)
      end
      message = {message: 'list updated succesfully'}
      return [true, message]
    end
  end
end
