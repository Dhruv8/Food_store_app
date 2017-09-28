class CreateDeliveryBoys < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_boys do |t|
      t.string :name
      t.integer :order_id
      t.integer :locality_id

      t.timestamps
    end
    add_index :delivery_boys, :order_id
    add_index :delivery_boys, :locality_id
  end
end
