module Lms
  class List < ApplicationRecord
    has_many :item_lists
    has_many :items, through: :item_lists

    has_many :list_layouts
    has_many :layouts, through: :list_layouts

    has_many :list_media
    has_many :media, through: :list_media
#GET
    def items
      as_json(only: [:id, :title, :description])
    end

    def list_attributes
      [:id, :title]
    end

    def index
      { lists: List.all.as_json(only: list_attributes, methods: [:items]) }
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
      list.update_attributes(params[:list])
    end
  end
end
