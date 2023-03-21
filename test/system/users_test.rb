require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Address city", with: @user.address_city
    fill_in "Address latitude", with: @user.address_latitude
    fill_in "Address longitude", with: @user.address_longitude
    fill_in "Address street", with: @user.address_street
    fill_in "Age", with: @user.age
    fill_in "Bank card expire", with: @user.bank_card_expire
    fill_in "Bank card number", with: @user.bank_card_number
    fill_in "Bank card type", with: @user.bank_card_type
    fill_in "Bank currency", with: @user.bank_currency
    fill_in "Bank iban", with: @user.bank_iban
    fill_in "Birth date", with: @user.birth_date
    fill_in "Blood group", with: @user.blood_group
    fill_in "Company address city", with: @user.company_address_city
    fill_in "Company address latitude", with: @user.company_address_latitude
    fill_in "Company address longitude", with: @user.company_address_longitude
    fill_in "Company address postal code", with: @user.company_address_postal_code
    fill_in "Company address state", with: @user.company_address_state
    fill_in "Company address street", with: @user.company_address_street
    fill_in "Company department", with: @user.company_department
    fill_in "Company name", with: @user.company_name
    fill_in "Company title", with: @user.company_title
    fill_in "Domain", with: @user.domain
    fill_in "Ein", with: @user.ein
    fill_in "Email", with: @user.email
    fill_in "Eye color", with: @user.eye_color
    fill_in "First name", with: @user.first_name
    fill_in "Gender", with: @user.gender
    fill_in "Hair color", with: @user.hair_color
    fill_in "Hair type", with: @user.hair_type
    fill_in "Height", with: @user.height
    fill_in "Image", with: @user.image
    fill_in "Ip", with: @user.ip
    fill_in "Last name", with: @user.last_name
    fill_in "Mac address", with: @user.mac_address
    fill_in "Maiden name", with: @user.maiden_name
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Postal code", with: @user.postal_code
    fill_in "Ssn", with: @user.ssn
    fill_in "State", with: @user.state
    fill_in "University", with: @user.university
    fill_in "User agent", with: @user.user_agent
    fill_in "Username", with: @user.username
    fill_in "Weight", with: @user.weight
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Address city", with: @user.address_city
    fill_in "Address latitude", with: @user.address_latitude
    fill_in "Address longitude", with: @user.address_longitude
    fill_in "Address street", with: @user.address_street
    fill_in "Age", with: @user.age
    fill_in "Bank card expire", with: @user.bank_card_expire
    fill_in "Bank card number", with: @user.bank_card_number
    fill_in "Bank card type", with: @user.bank_card_type
    fill_in "Bank currency", with: @user.bank_currency
    fill_in "Bank iban", with: @user.bank_iban
    fill_in "Birth date", with: @user.birth_date
    fill_in "Blood group", with: @user.blood_group
    fill_in "Company address city", with: @user.company_address_city
    fill_in "Company address latitude", with: @user.company_address_latitude
    fill_in "Company address longitude", with: @user.company_address_longitude
    fill_in "Company address postal code", with: @user.company_address_postal_code
    fill_in "Company address state", with: @user.company_address_state
    fill_in "Company address street", with: @user.company_address_street
    fill_in "Company department", with: @user.company_department
    fill_in "Company name", with: @user.company_name
    fill_in "Company title", with: @user.company_title
    fill_in "Domain", with: @user.domain
    fill_in "Ein", with: @user.ein
    fill_in "Email", with: @user.email
    fill_in "Eye color", with: @user.eye_color
    fill_in "First name", with: @user.first_name
    fill_in "Gender", with: @user.gender
    fill_in "Hair color", with: @user.hair_color
    fill_in "Hair type", with: @user.hair_type
    fill_in "Height", with: @user.height
    fill_in "Image", with: @user.image
    fill_in "Ip", with: @user.ip
    fill_in "Last name", with: @user.last_name
    fill_in "Mac address", with: @user.mac_address
    fill_in "Maiden name", with: @user.maiden_name
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Postal code", with: @user.postal_code
    fill_in "Ssn", with: @user.ssn
    fill_in "State", with: @user.state
    fill_in "University", with: @user.university
    fill_in "User agent", with: @user.user_agent
    fill_in "Username", with: @user.username
    fill_in "Weight", with: @user.weight
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
