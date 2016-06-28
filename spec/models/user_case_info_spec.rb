 require "rails_helper"

 RSpec.describe UserCaseInfo, type: :model do
 	it { should belong_to(:user)}
 	it { should have_many(:user_documents).through(:document_user_case_infos)}
 end