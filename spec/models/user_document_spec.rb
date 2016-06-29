# == Schema Information
#
# Table name: user_documents
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  document_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string
#

 require "rails_helper"

 RSpec.describe UserDocument, type: :model do
 	describe 'associations' do
		it { should belong_to(:user)}
	 	it { should belong_to(:document)}
	 	it { should validate_presence_of(:document_id)}
	 	it { should belong_to(:user)}
	 	it { should have_many(:user_informations).through(:document_user_informations) }
	 	it { should have_many(:user_case_infos).through(:document_user_case_infos)}
	 	it { should have_many(:user_references)}
 	end
 end
