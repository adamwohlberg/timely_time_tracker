class CreateTimeEntries < ActiveRecord::Migration
  def up
    create_table :time_entries do |t|
    	t.float :time
    	t.integer :customer_id
    	t.integer :employee_id
      t.timestamps null: false
    end
  end

  def down
    drop_table :time_entries
  end
end
