require 'test_helper'

class DeletedUserNotificationWorkerTest < ActiveSupport::TestCase
  # include ActiveJob::TestHelper

  # test 'sends email 30 minutes after user deletion' do
  #   user = users(:one)

  #   travel_to Time.current do
  #     assert_enqueued_jobs 1, only: DeletedUserNotificationWorker do
  #       user.destroy
  #     end
  #   end

  #   travel 30.minutes

  #   assert_emails 1 do
  #     perform_enqueued_jobs do
  #       assert_performed_jobs 1, only: DeletedUserNotificationWorker do
  #         DeletedUserNotificationWorker.perform_async(user.id)
  #       end
  #     end
  #   end
  # end
end
