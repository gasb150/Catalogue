require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'assosiations' do
    it { should have_many(:products) }
  end

  describe 'Category attributes presence' do
    it { should validate_presence_of(:name) }
  end
end
