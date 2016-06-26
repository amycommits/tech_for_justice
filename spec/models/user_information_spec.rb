 require "rails_helper"

RSpec.describe UserInformation, type: :model do
 	it { should belong_to(:user) }
end
