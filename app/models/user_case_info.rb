class UserCaseInfo < ActiveRecord::Base
  belongs_to :user
  has_many :user_documents, through: :document_user_case_infos
  #has_one :user_information, through: :map_user_document_user_info
end
