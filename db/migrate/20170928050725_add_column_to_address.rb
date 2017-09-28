class AddColumnToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :location_id, :integer
    add_column :addresses, :location_type, :string
  end
end
