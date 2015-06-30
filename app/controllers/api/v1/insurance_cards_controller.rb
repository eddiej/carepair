class Api::V1::InsuranceCardsController < ApplicationController

  def index
    @cards = InsuranceCard.all
    # render json: @cards
  end

	def create
	  card = InsuranceCard.new
    if front_guid = params[:front_photo_guid]
      find_and_associate(card, front_guid, 'Front')
    end
    if back_guid = params[:back_photo_guid]
      find_and_associate(card, back_guid, 'Back')
    end
    
    if card.save
      head :ok 
    else
      render status: :unprocessable_entity, json: {error: card.errors}
    end

  end

  private

  def find_and_associate(card, guid, type)
    upload = TemporaryUpload.where(guid: guid).first
    upload.update_column(:type, type) unless upload.type.present?
    card.temporary_uploads << upload
  end
end
