class CustomersOrders < ActiveRecord::Migration
	  def up
	    create_table 'customers_orders',:id => false do |t|

	      t.column 'customer_id', :integer
	      t.column 'order_id', :integer
	    end
	  end
	
	  def down
	    drop_table 'customers_orders'
	    end
	  end