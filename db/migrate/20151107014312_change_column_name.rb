class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :foodtrucks, :type, :cuisine
  end
end
