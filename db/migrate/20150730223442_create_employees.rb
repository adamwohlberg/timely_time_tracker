class CreateEmployees < ActiveRecord::Migration
  def up
    create_table :employees do |t|
    	t.string :name, :email
      t.timestamps null: false
    end
  end

  def down
  	drop_table :employees
  end
end
