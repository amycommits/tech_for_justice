# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string
#  uid                    :string
#  admin                  :boolean          default(FALSE)
#

require "rails_helper"

describe User do
  let(:user) { FactoryGirl.create :user }

  context 'valid' do
    it 'requires email' do
      expect(user).to validate_presence_of :email
    end
  end

  context 'not valid'

  it { should have_many(:user_case_infos)}

  it { should have_one(:user_information) }
  it { should have_many(:user_documents) }
end

