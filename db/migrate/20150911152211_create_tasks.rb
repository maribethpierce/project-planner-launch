class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.date :due_date
      t.integer :user_id
      t.integer :project_id
    end
  end
end
