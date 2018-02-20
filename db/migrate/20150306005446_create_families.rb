class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :common_name
      t.text :description

      t.timestamps null: false
    end
  end
end
