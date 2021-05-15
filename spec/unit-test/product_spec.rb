require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'assosiations' do
    it { should belong_to(:category) }
  end
  describe 'name presence' do
    it { should validate_presence_of(:name) }
  end

  describe 'description presence' do
    it { should validate_presence_of(:description) }
  end

  describe 'category ids presence' do
    it { should validate_presence_of(:category_id) }
  end
  describe 'iva presence' do
    it { should validate_presence_of(:iva) }
  end
end
