class RemoveColumnFromDeliveryBoy < ActiveRecord::Migration[5.1]
  def change
  	remove_column :delivery_boys, :order_id
  	remove_column :delivery_boys, :locality_id
  end
end
