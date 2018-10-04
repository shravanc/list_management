require_dependency "lms/application_controller"

module Lms
  class LayoutsController < ApplicationController
    def index
      render json: {layouts: Layout.all.as_json}
    end

    def create
      layout = Layout.new
      status, data = layout.create(params)
      if status
        render json: data, status: :unprocessable_entity
      else
        render json: data, status: :created
      end
    end
  end
end
