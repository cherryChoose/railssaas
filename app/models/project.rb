class Project < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
  def incomplete_tasks
    tasks.where(completed_at: nil)
  end

  def complete_tasks
    tasks.where('completed_at is not null')
  end
end
