class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :phone, presence: true, length: { maximum: 20 }
  validates :height, presence: true, numericality: { greater_than: 0 }
  validates :weight, presence: true, numericality: { greater_than: 0 }

  # after_create :purge_cache
  # after_update :purge_cache

  before_destroy :schedule_deleted_user_notification
  # after_destroy :purge_cache

  private

  def schedule_deleted_user_notification
    DeletedUserNotificationWorker.perform_in(30.minutes, id)
  end

  # def purge_cache(user)
  #   expire_fragment(user)

  #   users_orders = user.orders
  #   users_orders.each do |order|
  #     expire_fragment(order)
  #   end
  # end
end
