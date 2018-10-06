module Lms
  class List < ApplicationRecord
    has_many :item_lists
    has_many :items,-> {order 'lms_item_lists.number'}, through: :item_lists

    has_many :list_layouts
    has_many :layouts, through: :list_layouts

    has_many :list_media
    has_many :media, through: :list_media

    has_many :app_lists
    has_many :apps, through: :app_lists

#GET

    def list_attributes
      [:id, :title]
    end

    def index
      { lists: List.all.as_json(only: list_attributes, include: { items: {only: [:id, :title] } } ) }
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
      item_data = params.require(:list).permit([ items: [:item_id, :number] ])["items"]

      if item_data
        item_lists_params = item_data.map{|a1| {item_id: a1["item_id"], list_id: list.id, number: a1["number"]} }
        list.item_lists.create(item_lists_params)
      end

      message = {message: 'list updated succesfully'}
      return [true, message]
    end
  end
end
