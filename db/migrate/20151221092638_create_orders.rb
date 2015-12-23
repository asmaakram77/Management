class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :order
      t.integer :order_no

      t.timestamps
    end
  end
end
