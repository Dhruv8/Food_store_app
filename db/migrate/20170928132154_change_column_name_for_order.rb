class ChangeColumnNameForOrder < ActiveRecord::Migration[5.1]
  def change
  	rename_column :orders, :oerder_no, :order_no
  end
end
