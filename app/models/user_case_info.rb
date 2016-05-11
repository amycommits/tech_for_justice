class UserCaseInfo < ActiveRecord::Base
  belongs_to :user
  has_many :user_documents, through: :document_user_case_infos
end
