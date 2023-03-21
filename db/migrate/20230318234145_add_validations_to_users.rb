class AddValidationsToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :first_name, :string, null: false, limit: 50
    change_column :users, :last_name, :string, null: false, limit: 50
    change_column :users, :email, :string, null: false, limit: 255
    change_column :users, :phone, :string, null: false, limit: 20
    change_column :users, :height, :float, null: false, default: 0.0
    change_column :users, :weight, :float, null: false, default: 0.0
  end
end
