require 'rails_helper'

RSpec.describe Location, type: :model do
  let(:location) { FactoryBot.create(:location) }

  describe 'validations' do
    it { should allow_value('Apple Headquarters').for(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
  end
end
