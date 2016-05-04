class CreateUserCaseInfos < ActiveRecord::Migration
  def change
    create_table :user_case_infos do |t|
      t.references :user, index: true, foreign_key: true
      t.text :docket_id
      t.text :charged_with
      t.text :charge_type
      t.text :police_description
      t.text :case_conclusion
      t.text :is_case_pending
      t.timestamp :case_end_date

      t.timestamps null: false
    end
  end
end
