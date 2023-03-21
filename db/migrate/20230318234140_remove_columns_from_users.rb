class RemoveColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :maiden_name
    remove_column :users, :age
    remove_column :users, :gender
    remove_column :users, :username
    remove_column :users, :password
    remove_column :users, :birth_date
    remove_column :users, :image
    remove_column :users, :blood_group
    remove_column :users, :eye_color
    remove_column :users, :hair_color
    remove_column :users, :hair_type
    remove_column :users, :domain
    remove_column :users, :ip
    remove_column :users, :address_street
    remove_column :users, :address_city
    remove_column :users, :address_latitude
    remove_column :users, :address_longitude
    remove_column :users, :postal_code
    remove_column :users, :state
    remove_column :users, :mac_address
    remove_column :users, :university
    remove_column :users, :bank_card_expire
    remove_column :users, :bank_card_number
    remove_column :users, :bank_card_type
    remove_column :users, :bank_currency
    remove_column :users, :bank_iban
    remove_column :users, :company_address_street
    remove_column :users, :company_address_city
    remove_column :users, :company_address_latitude
    remove_column :users, :company_address_longitude
    remove_column :users, :company_address_postal_code
    remove_column :users, :company_address_state
    remove_column :users, :company_department
    remove_column :users, :company_name
    remove_column :users, :company_title
    remove_column :users, :ein
    remove_column :users, :ssn
    remove_column :users, :user_agent
  end
end
