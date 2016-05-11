class UserReference < ActiveRecord::Base
	belongs_to :user
	belongs_to :user_document
end
