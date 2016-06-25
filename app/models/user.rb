class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_case_infos
  has_one :user_information
  has_many :user_documents
  has_and_belongs_to_many :oauth_credentials
end
