require_dependency "lms/application_controller"

module Lms
  class ItemsController < ApplicationController
    def index 
      render json: Item.new.index
    end

    def show
    end

    def create
      item = Item.new
      status, data = item.create(params)
      if status
        render json: data, status: :unprocessable_entity
      else
        render json: data, status: :created
      end
    end

    def update
    end
  end
end
