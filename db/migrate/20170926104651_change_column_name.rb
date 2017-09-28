class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :food_items , :type, :food_type
  end
end
