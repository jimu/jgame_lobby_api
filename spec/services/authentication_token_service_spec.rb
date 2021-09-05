require 'rails_helper'

#  NOTE:  This "AuthenticationTokenService" references a class
describe AuthenticationTokenService do
  describe '.class' do

    it 'returns an authentication token' do
      hmac_secret = 'my$secretKeyLOL'

      token = described_class.call
      decoded_token = JWT.decode token, hmac_secret, true, {algorithm: 'HS256'}

      expect(decoded_token).to eq [{"test"=>"blah"},{"alg"=>"HS256"}]
    end

  end
end
