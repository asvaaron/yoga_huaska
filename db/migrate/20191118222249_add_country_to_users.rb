class AddCountryToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :country, :string, :limit => 5
  end
end
