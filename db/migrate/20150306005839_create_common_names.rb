class CreateCommonNames < ActiveRecord::Migration
  def change
    create_table :common_names do |t|
      t.string :name
      t.string :common_name
      t.text :description

      t.timestamps null: false
    end
  end
end
