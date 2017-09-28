class AddColumnToDeliveryBoy < ActiveRecord::Migration[5.1]
  def change
    add_column :delivery_boys, :rider_id, :integer
    add_column :delivery_boys, :rider_type, :string
  end
end
