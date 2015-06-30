class CreateTemporaryUploads < ActiveRecord::Migration
  def change
    create_table :temporary_uploads do |t|
      t.string :guid

      t.timestamps null: false
    end
  end
end
