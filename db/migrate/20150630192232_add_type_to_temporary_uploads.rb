class AddTypeToTemporaryUploads < ActiveRecord::Migration
  def change
    add_column :temporary_uploads, :type, :string
  end
end
