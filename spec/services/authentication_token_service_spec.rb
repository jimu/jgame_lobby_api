require 'rails_helper'

#  NOTE:  This "AuthenticationTokenService" references a class
describe AuthenticationTokenService do

  let(:token) {described_class.call(42)}

  describe '.class' do

    it 'returns an authentication token' do

      decoded_token = JWT.decode token, described_class::HMAC_SECRET, true, {algorithm: described_class::ALGORITHM_TYPE}

      expect(decoded_token).to eq [{"user_id"=>42},{"alg"=>"HS256"}]
    end

  end
end
