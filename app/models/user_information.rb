class UserInformation < ActiveRecord::Base
  belongs_to :user
  has_many :user_documents, through: :document_user_informations
end
