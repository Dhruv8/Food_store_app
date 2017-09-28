class CreateOrderPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :order_payments do |t|
      t.integer :payment_method_id
      t.integer :order_id

      t.timestamps
    end
  end
end
