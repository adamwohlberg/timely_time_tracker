class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
    	t.string :name
    	t.string :about
    	t.integer :balance
      t.timestamps null: false
    end
  end

  def down
  	drop_table :customers
  end	
end
