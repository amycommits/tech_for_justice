class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|

      t.timestamps null: false
    end
  end
end
