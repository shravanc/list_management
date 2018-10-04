module Lms
  class Item < ApplicationRecord
    has_many :item_lists
    has_many :lists, through: :item_lists

    has_many :item_media
    has_many :media, through: :item_media

    def items_attributes
      [:id, :title, :description] 
    end

    def media
      as_json(only: [:id, :title])
    end

    def index
      { items: Item.all.as_json(only: items_attributes, methods: [:media] ) }
    end

    def create params
      item = Item.new(params[:item].as_json)
      item.save

      message = { message: 'item created succesfully'}
      return [ true, message ]

    end

    def update params
      item = Item.find(params[:id])
      item.update_attributes(params[:item])
    end

  end
end
