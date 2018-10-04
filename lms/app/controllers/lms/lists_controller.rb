require_dependency "lms/application_controller"

module Lms
  class ListsController < ApplicationController
    def index
      render json: List.new.index
    end

    def show
    end

    def create
      list = List.new
      status, data = list.create(params)
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
