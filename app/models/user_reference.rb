# == Schema Information
#
# Table name: user_references
#
#  id               :integer          not null, primary key
#  attachment       :text
#  reference_name   :string
#  relation_to_user :string
#  reference        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  user_document_id :integer
#

class UserReference < ActiveRecord::Base
	belongs_to :user
	belongs_to :user_document
end
