require 'httparty'

class ApiFetcher
  def self.fetch_users_data(page = 1, per_page = 100)
    response = HTTParty.get("https://dummyjson.com/users?limit=#{per_page}&page=#{page}")
    response_data = JSON.parse(response.body)
    total = response_data['total']
    users_data = []
    response_data['users'].each do |user|
      user_data = {
        id: user['id'],
        first_name: user['firstName'],
        last_name: user['lastName'],
        email: user['email'],
        phone: user['phone'],
        height: user['height'],
        weight: user['weight']
      }
      users_data << user_data
    end
    [users_data, total]
  end

  def self.save_users_to_database(users_data)
    users_data.each { |user_data| User.create(user_data) }
  end
end
