class RemoveUserIdFromOrder < ActiveRecord::Migration[5.1]
  def change
  	remove_column :addresses , :order_id
  end
end
