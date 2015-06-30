class Api::V1::TemporaryUploadsController < ApplicationController
  def create
    puts params
    
		tempfile = params['upload']
    guid = params['guid']
    extension = File.extname(tempfile.path)
    destination = Rails.root.join("public/images/#{guid}#{extension}").to_s
    
    t = TemporaryUpload.new(upload_params)
    FileUtils.copy(tempfile.path, destination)
    t.filepath = destination
    
    if t.save
      render json: t.to_json
    else
      render status: :unprocessable_entity, json: {error: t.errors}
    end

    
	end

  private

  def upload_params
    params.permit(:guid)
  end
end
