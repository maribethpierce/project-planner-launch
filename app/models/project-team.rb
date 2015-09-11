class ProjectTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates :user_id, presence: true, uniqueness: { scope: :project_id }
  validates :project_id, presence: true, uniqueness: { scope: :user_id }
end
