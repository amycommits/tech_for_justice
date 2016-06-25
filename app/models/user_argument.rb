# == Schema Information
#
# Table name: user_arguments
#
#  id                  :integer          not null, primary key
#  document_id         :integer
#  overall_reason      :string
#  user_change_details :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  user_document_id    :integer
#

class UserArgument < ActiveRecord::Base
  belongs_to :user_document
  scope :current_user_argument, -> { where(user_id: current_user.id)}
end
