class CreateCustomerOrder < ActiveRecord::Migration
	  def change
	    create_table :customer_order do |t|
	      t.integer :order_id
	      t.integer :customer_id
	    end
	  end
	end