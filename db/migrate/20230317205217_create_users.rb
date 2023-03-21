class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :maiden_name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :phone
      t.string :username
      t.string :password
      t.date :birth_date
      t.string :image
      t.string :blood_group
      t.float :height
      t.float :weight
      t.string :eye_color
      t.string :hair_color
      t.string :hair_type
      t.string :domain
      t.string :ip
      t.string :address_street
      t.string :address_city
      t.float :address_latitude
      t.float :address_longitude
      t.string :postal_code
      t.string :state
      t.string :mac_address
      t.string :university
      t.string :bank_card_expire
      t.string :bank_card_number
      t.string :bank_card_type
      t.string :bank_currency
      t.string :bank_iban
      t.string :company_address_street
      t.string :company_address_city
      t.float :company_address_latitude
      t.float :company_address_longitude
      t.string :company_address_postal_code
      t.string :company_address_state
      t.string :company_department
      t.string :company_name
      t.string :company_title
      t.string :ein
      t.string :ssn
      t.string :user_agent

      t.timestamps
    end
  end
end
