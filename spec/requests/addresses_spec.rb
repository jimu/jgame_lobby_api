require 'rails_helper'

RSpec.describe "Addresses API", type: :request do

  describe "GET /addresses" do
    
    before do
      user = FactoryBot.create(:user, name: 'Fred')
      FactoryBot.create(:address, description: 'email', value: 'x@x.com', user: user)
    end

    it 'returns all matches' do
      get '/addresses'

      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(1)
    end
  end


  describe "GET /addresses/1" do
    
    before do
      user = FactoryBot.create(:user, name: 'Fred')
      FactoryBot.create(:address, description: 'email', value: 'x@x.com', user: user)
    end

    it 'returns the correct address' do
      get '/addresses/1'

      expect(response).to have_http_status(:success)
      expect(response_body).to eq(
        {
          'id' => 1,
          'description' => 'email',
          'value' => 'x@x.com',
          'user_name' => 'Fred'
        }
      )
    end
  end
end
