class CreateInsuranceCards < ActiveRecord::Migration
  def change
    create_table :insurance_cards do |t|

      t.timestamps null: false
    end
  end
end
