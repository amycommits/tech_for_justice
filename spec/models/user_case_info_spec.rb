# == Schema Information
#
# Table name: user_case_infos
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  docket_id          :text
#  charged_with       :text
#  charge_type        :text
#  police_description :text
#  case_conclusion    :text
#  is_case_pending    :text
#  case_end_date      :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_document_id   :integer
#

 require "rails_helper"

 RSpec.describe UserCaseInfo, type: :model do
 	it { should belong_to(:user)}
 	it { should have_many(:user_documents).through(:document_user_case_infos)}
 end
