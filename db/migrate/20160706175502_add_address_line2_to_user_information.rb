class AddAddressLine2ToUserInformation < ActiveRecord::Migration
  def change
    add_column :user_informations, :address_line_2, :text
  end
end
