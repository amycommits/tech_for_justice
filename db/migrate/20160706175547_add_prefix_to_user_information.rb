class AddPrefixToUserInformation < ActiveRecord::Migration
  def change
    add_column :user_informations, :prefix, :text
  end
end
