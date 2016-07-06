class RemovePreefixSuffixFromUserInformation < ActiveRecord::Migration
  def change
    remove_column :user_informations, :preefix_suffix, :text
  end
end
