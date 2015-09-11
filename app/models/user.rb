class User < ActiveRecord::Base
  has_many :project_teams
  has_many :projects, through: :project_teams
  has_many :tasks
  validates :email, presence: true
  validates :password, presence: true
end
