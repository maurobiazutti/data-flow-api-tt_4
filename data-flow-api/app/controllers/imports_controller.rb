class ImportsController < ApplicationController
  def create
    render json: {message: "Import endpoint reached"}, status: :created
  end
end
