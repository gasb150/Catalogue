require 'rails_helper'
RSpec.describe User, type: :model do
  subject(:user) do
    User.new(username: '7aves', email: 'gustav@eexample-mail.com', password: 'example')
  end

  describe 'valid atributes' do
    it 'is valid with all  attributes' do
      expect(user).to be_valid
    end
    it 'is not valid without a username' do
      user.username = nil
      expect(user).to_not be_valid
    end
    it 'is not valid without a email' do
      user.email = nil
      expect(user).to_not be_valid
    end
    it 'is not valid without a password' do
      user.password = nil
      expect(user).to_not be_valid
    end
  end
end
