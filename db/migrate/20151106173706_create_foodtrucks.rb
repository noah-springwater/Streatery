class CreateFoodtrucks < ActiveRecord::Migration
  def change
    create_table :foodtrucks do |t|
      t.string :name
      t.string :img_url
      t.string :type
      t.string :card
      t.text :menu
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
