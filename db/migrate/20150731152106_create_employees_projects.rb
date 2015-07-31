class CreateEmployeesProjects < ActiveRecord::Migration
  def change
    create_table :employees_projects, :id => false do |t|
    	t.integer :employee_id
    	t.integer :project_id
    end
    add_index(:employees_projects, [:employee_id, :project_id])
  end
end
