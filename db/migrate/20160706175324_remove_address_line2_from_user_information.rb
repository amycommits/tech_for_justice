class RemoveAddressLine2FromUserInformation < ActiveRecord::Migration
  def change
    remove_column :user_informations, :address_line2, :text
  end
end
