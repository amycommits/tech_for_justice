class UserArgument < ActiveRecord::Base
  belongs_to :user_document
  scope :current_user_argument, -> { where(user_id: current_user.id)}
end
