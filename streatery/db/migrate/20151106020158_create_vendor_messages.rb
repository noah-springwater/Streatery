class CreateVendorMessages < ActiveRecord::Migration
  def change
    create_table :vendor_messages do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
