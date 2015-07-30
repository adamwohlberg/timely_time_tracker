class CreateAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
    	t.string :type
    	t.string :name
    	t.string :email
    	t.string :about
    	# t.integer :balance
      t.timestamps null: false
    end
  end

  def down
  	drop_table :accounts
  end
end
