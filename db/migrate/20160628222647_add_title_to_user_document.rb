class AddTitleToUserDocument < ActiveRecord::Migration
  def change
    add_column :user_documents, :title, :string
  end
end
