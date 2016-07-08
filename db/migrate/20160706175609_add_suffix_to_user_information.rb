class AddSuffixToUserInformation < ActiveRecord::Migration
  def change
    add_column :user_informations, :suffix, :text
  end
end
