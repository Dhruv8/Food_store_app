class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.float :price
      t.string :type

      t.timestamps
    end
  end
end
