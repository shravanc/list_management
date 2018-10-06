module Lms
  class Layout < ApplicationRecord
    has_many :list_layouts  
    has_many :lists, through: :list_layouts

    def create params
      layout = Layout.new(params[:item].as_json)
      layout.save

      message = { message: 'layout created succesfully'}
      return [ true, message ]

    end
  end
end
