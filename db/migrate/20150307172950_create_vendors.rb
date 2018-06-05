class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :contact
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.string :website
      t.text :notes

      t.timestamps null: false
    end
  end
end
