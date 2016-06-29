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

 require "rails_helper"

 RSpec.describe UserArgument, type: :model do
 	it { should belong_to(:user_document)}
 end
