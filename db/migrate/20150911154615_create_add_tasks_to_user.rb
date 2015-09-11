class CreateAddTasksToUser < ActiveRecord::Migration
  def up
    add_column :users, :task_id, :integer
  end

  def down
    remove_column :users, :task_id
  end
end
