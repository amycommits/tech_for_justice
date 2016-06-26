 require "rails_helper"

 RSpec.describe UserArgument, type: :model do
 	it { should belong_to(:user_document)}
 end
