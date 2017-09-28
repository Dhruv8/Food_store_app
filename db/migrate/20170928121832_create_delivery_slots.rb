class CreateDeliverySlots < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_slots do |t|
      t.integer :delivery_boy_id
      t.integer :time_slot_id

      t.timestamps
    end
    add_index :delivery_slots, :delivery_boy_id
    add_index :delivery_slots, :time_slot_id
  end
end
