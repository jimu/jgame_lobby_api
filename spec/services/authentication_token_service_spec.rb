require 'rails_helper'

#  NOTE:  This "AuthenticationTokenService" references a class
describe AuthenticationTokenService do
  describe '.class' do
    it 'returns an authentication token' do
      expect(described_class.call).to eq('123')
    end
  end
end
