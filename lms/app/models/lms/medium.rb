module Lms
  class Medium < ApplicationRecord
    has_many :item_media
    has_many :items, through: :item_media

    has_many :list_media
    has_many :lists, through: :list_media

    def medium_attributes
      return [:id, :title]
    end

    def index
      { media: List.all.as_json(only: medium_attributes) }
    end

    def create params
      medium = Medium.new(params[:list].as_json)
      medium.save

      message = { message: 'Medium created succesfully'}
      return [ true, message ]

    end

    def update params
      medium = Medium.find(params[:id])
      medium.update_attributes(params[:medium])
    end



  end
end