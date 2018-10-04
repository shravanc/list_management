require_dependency "lms/application_controller"

module Lms
  class MediumController < ApplicationController
    def index
      render json: {media: Medium.all.as_json}
    end

    def create
      medium = Medium.new
      status, data = medium.create(params)
      if status
        render json: data, status: :unprocessable_entity
      else
        render json: data, status: :created
      end
    end
  end
end
