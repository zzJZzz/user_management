# test/models/user_test.rb
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
  end

  test 'should purge cache for user' do
    Rails.cache.write("views/users/#{@user.id}-some_data", 'test_value')

    @user.send(purge_cache)

    assert_nil Rails.cache.read("views/users/#{@user.id}-some_data")
  end
end
