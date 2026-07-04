class ImportsController < ApplicationController
  def create
    uploaded_file = params[:file]

    if uploaded_file
      json_data = CsvImportService.new(uploaded_file).call
      render json: json_data, status: :created
    else
      render json: {error: "Arquivo ausente"}, status: :bad_request
    end
  end
end
