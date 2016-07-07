class RemovePreefixSuffixFromUserInformation < ActiveRecord::Migration
  def change
    remove_column :user_informations, :prefix_suffix, :text
  end
end
