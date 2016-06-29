# == Schema Information
#
# Table name: user_references
#
#  id               :integer          not null, primary key
#  attachment       :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  user_document_id :integer
#  reference_name   :string
#  relation_to_user :string
#  recommendation   :string
#

class UserReference < ActiveRecord::Base
	belongs_to :user
	belongs_to :user_document
end
