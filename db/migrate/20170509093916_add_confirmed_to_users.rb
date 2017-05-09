class AddConfirmedToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :email_confirmation_token, :string, null: false, default: ""
    add_column :users, :email_confirmed_at, :datetime
  end
end
