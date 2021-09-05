require 'rails_helper'

RSpec.describe "Users", type: :request do

  before do
    user = FactoryBot.create :user, name: 'Fred'
  end

  describe "GET /index" do
    it 'returns all users' do
      get '/users'

      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(1)
    end
  end

end
