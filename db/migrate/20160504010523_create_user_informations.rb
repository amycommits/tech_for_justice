class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.references :user, index: true, foreign_key: true
      t.text :pd_id
      t.text :first_name
      t.text :last_name
      t.text :middle_name
      t.text :prefix
      t.text :suffix
      t.text :title
      t.text :address_line_1
      t.text :address_line_2
      t.text :city
      t.text :state
      t.text :phone_number

      t.timestamps null: false
    end
  end
end
