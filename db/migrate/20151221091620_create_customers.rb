class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :table_no

      t.timestamps
    end
  end
end
