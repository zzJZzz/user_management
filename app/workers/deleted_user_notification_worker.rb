class DeletedUserNotificationWorker
  include Sidekiq::Worker

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.deleted_user_notification(user).deliver_now
  end
end
