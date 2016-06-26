class RemoveStaticContents < ActiveRecord::Migration
  def change
    drop_table :static_contents
  end
end
