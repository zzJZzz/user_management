require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { address_city: @user.address_city, address_latitude: @user.address_latitude, address_longitude: @user.address_longitude, address_street: @user.address_street, age: @user.age, bank_card_expire: @user.bank_card_expire, bank_card_number: @user.bank_card_number, bank_card_type: @user.bank_card_type, bank_currency: @user.bank_currency, bank_iban: @user.bank_iban, birth_date: @user.birth_date, blood_group: @user.blood_group, company_address_city: @user.company_address_city, company_address_latitude: @user.company_address_latitude, company_address_longitude: @user.company_address_longitude, company_address_postal_code: @user.company_address_postal_code, company_address_state: @user.company_address_state, company_address_street: @user.company_address_street, company_department: @user.company_department, company_name: @user.company_name, company_title: @user.company_title, domain: @user.domain, ein: @user.ein, email: @user.email, eye_color: @user.eye_color, first_name: @user.first_name, gender: @user.gender, hair_color: @user.hair_color, hair_type: @user.hair_type, height: @user.height, image: @user.image, ip: @user.ip, last_name: @user.last_name, mac_address: @user.mac_address, maiden_name: @user.maiden_name, password: @user.password, phone: @user.phone, postal_code: @user.postal_code, ssn: @user.ssn, state: @user.state, university: @user.university, user_agent: @user.user_agent, username: @user.username, weight: @user.weight } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_city: @user.address_city, address_latitude: @user.address_latitude, address_longitude: @user.address_longitude, address_street: @user.address_street, age: @user.age, bank_card_expire: @user.bank_card_expire, bank_card_number: @user.bank_card_number, bank_card_type: @user.bank_card_type, bank_currency: @user.bank_currency, bank_iban: @user.bank_iban, birth_date: @user.birth_date, blood_group: @user.blood_group, company_address_city: @user.company_address_city, company_address_latitude: @user.company_address_latitude, company_address_longitude: @user.company_address_longitude, company_address_postal_code: @user.company_address_postal_code, company_address_state: @user.company_address_state, company_address_street: @user.company_address_street, company_department: @user.company_department, company_name: @user.company_name, company_title: @user.company_title, domain: @user.domain, ein: @user.ein, email: @user.email, eye_color: @user.eye_color, first_name: @user.first_name, gender: @user.gender, hair_color: @user.hair_color, hair_type: @user.hair_type, height: @user.height, image: @user.image, ip: @user.ip, last_name: @user.last_name, mac_address: @user.mac_address, maiden_name: @user.maiden_name, password: @user.password, phone: @user.phone, postal_code: @user.postal_code, ssn: @user.ssn, state: @user.state, university: @user.university, user_agent: @user.user_agent, username: @user.username, weight: @user.weight } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
