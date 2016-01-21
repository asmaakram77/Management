class ChangeOrdersToPolymorphic < ActiveRecord::Migration
	def up
		remove_index :orders, :customer_id
		remove_column :orders, :customer_id

		add_column :orders, :orderable_id, :integer
		add_column :orders, :orderable_type, :string 
	end

	def down
		remove_column :orders, :orderable_type
		remove_column :orders, :orderable_id


		add_column :orders, :customer_id, :integer
		add_index :orders, :customer_id
	end
end
