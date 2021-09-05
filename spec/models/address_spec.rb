require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'Address.new' do
    it 'stores and accesses fields' do
      address = Address.new description: 'email', value: 'fred@kruger.com'

      expect(address.description).to eq('email')
      expect(address.value).to eq('fred@kruger.com')
    end
  end
end
