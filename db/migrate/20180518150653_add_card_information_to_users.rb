class AddCardInformationToUsers < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :stripe_id, :string
      add_column :users, :card_brand, :string
      add_column :users, :card_last4digits, :string
      add_column :users, :card_expire_month, :string
      add_column :users, :card_expire_year, :string
      add_column :users, :expires_at, :datetime
  end
end
