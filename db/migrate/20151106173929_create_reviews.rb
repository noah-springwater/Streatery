class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :rating
      t.text :message
      t.references :foodtruck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
