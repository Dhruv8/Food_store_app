class CreateOrderSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :order_slots do |t|
      t.integer :order_id
      t.integer :time_slot_id

      t.timestamps
    end
  end
end
