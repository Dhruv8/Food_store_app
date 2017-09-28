class CreateOrderAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :order_addresses do |t|
      t.integer :order_id
      t.integer :address_id

      t.timestamps
    end
    add_index :order_addresses, :order_id
    add_index :order_addresses, :address_id
  end
end
