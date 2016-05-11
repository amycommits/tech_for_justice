class AddFormToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :form, :text
  end
end
