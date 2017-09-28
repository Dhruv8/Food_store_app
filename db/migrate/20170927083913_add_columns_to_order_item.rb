class AddColumnsToOrderItem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :food_item_id, :integer
    add_index :order_items, :food_item_id
    add_column :order_items, :order_id, :integer
    add_index :order_items, :order_id
    add_column :order_items, :food_item_quantity, :string
  end
end
