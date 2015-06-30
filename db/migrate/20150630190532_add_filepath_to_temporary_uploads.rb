class AddFilepathToTemporaryUploads < ActiveRecord::Migration
  def change
    add_column :temporary_uploads, :filepath, :string
  end
end
