class UserInformation < ActiveRecord::Base
  belongs_to :user
  has_many :user_documents, through: :document_user_informations
  has_many :user_case_infos, through: :map_user_document_user_infos
end
