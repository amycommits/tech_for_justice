 require "rails_helper"

 RSpec.describe UserReference, type: :model do
 	  it { should belong_to(:user) }
 	  it { should belong_to(:user_document) }
 end