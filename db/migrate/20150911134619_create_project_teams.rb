class CreateProjectTeams < ActiveRecord::Migration
  def change
    create_table :project_teams do |t|
      t.integer :user_id, null: false
      t.integer :project_id, null: false
    end
    add_index :project_teams, [ :user_id, :project_id ], unique: true
  end
end
