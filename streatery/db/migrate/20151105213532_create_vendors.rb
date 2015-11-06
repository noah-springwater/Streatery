class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :img_url
      t.text :description
      t.string :food_type
      t.string :cards
      t.text :menu
      t.string :is_vendor

      t.timestamps null: false
    end
  end
end
