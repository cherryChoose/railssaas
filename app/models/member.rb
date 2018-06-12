class Member < User
  has_one :profile
  has_secure_password
  def guest?
    false
  end
  
  def name
    username
  end

  def task_limit
    1000
  end
  
  def can_share_task?(task)
    task.project.user_id == id
  end
  
  def send_password_reset
    UserMailer.password_reset(self).deliver
  end
end