class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :Flat_no
      t.string :building_name
      t.string :pincode
      t.string :residence_type

      t.timestamps
    end
  end
end
