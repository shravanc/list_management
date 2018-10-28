require_dependency "lms/application_controller"

module Lms
  class ListsController < ApplicationController
    def index
      render json: List.new.index
    end

    def show
      list = List.find(params[:id])
      render json: list.as_json(only: [:id, :title], include: [ {media: {only: [:id, :title, :url]}}, { layouts: { only: [:id, :title]}}, { items: {only: [:id, :title], include: [{media: {only: [:id, :title, :url]}}] } }, {sublists: {only: [:id, :title], include: [{layouts: {only: [:id, :title]}} ] }} ] )
      return
    end

    def create
      list = List.new
      status, data = list.create(params)
      if status
        render json: data, status: :created
      else
        render json: data, status: :unprocessable_entity
      end
    end

    def update
      list = List.new
      status, data = list.update(params)
      if status
        render json: data, status: :ok
      else
        render json: data, status: :unprocessable_entity
      end
    end
  end
end
