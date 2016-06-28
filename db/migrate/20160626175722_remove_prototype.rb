class RemovePrototype < ActiveRecord::Migration
  def change
    drop_table :prototypes
  end
end
