class UserDocument < ActiveRecord::Base
  belongs_to :user
  belongs_to :document
  has_many :user_informations, through: :document_user_informations
  has_many :user_case_infos, through: :document_case_infos
  has_many :user_references
end
