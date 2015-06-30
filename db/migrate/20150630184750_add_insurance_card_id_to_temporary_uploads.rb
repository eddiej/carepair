class AddInsuranceCardIdToTemporaryUploads < ActiveRecord::Migration
  def change
    add_column :temporary_uploads, :insurance_card_id, :integer
  end
end
