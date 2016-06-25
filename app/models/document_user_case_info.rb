# == Schema Information
#
# Table name: document_user_case_infos
#
#  id                :integer          not null, primary key
#  user_document_id  :integer
#  user_case_info_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class DocumentUserCaseInfo < ActiveRecord::Base
  belongs_to :user_document
  belongs_to :user_case_info
end
