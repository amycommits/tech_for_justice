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

 require "rails_helper"

 RSpec.describe UserReference, type: :model do
 	  it { should belong_to(:user) }
 	  it { should belong_to(:user_document) }
 end
