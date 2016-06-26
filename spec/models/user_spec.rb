describe User do
  let(:user) { FactoryGirl.create :user }

  context 'valid' do
    it 'requires email' do
      expect(user).to validate_presence_of :email
    end
  end

  context 'not valid'
end

