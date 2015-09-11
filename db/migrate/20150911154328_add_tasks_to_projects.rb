class AddTasksToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :task_id, :integer
  end

  def down
    remove_column :projects, :task_id
  end
end
