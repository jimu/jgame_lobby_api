# Note: generator implements this in spec/requests/api/v1/authentication_spec.rb
require 'rails_helper'

describe 'Authentication', type: :request do

  describe 'POST /authenticate' do
  
    it 'authenticates the client' do
      post '/api/v1/authenticate', params: { username: 'BookSeller99', password: "Password1" }

      expect(response).to have_http_status :created
      expect(response_body).to eq({
        'token' => '123'
      })
    end

    it 'requires a username and password' do
      post '/api/v1/authenticate', params: { password: "Password1" }

      expect(response).to have_http_status :unprocessable_entity
    end

    it 'returns an error when username is missing' do
      post '/api/v1/authenticate', params: { password: "Password1" }

      expect(response).to have_http_status :unprocessable_entity
      p response_body
      puts "***"
      error = response_body["error"][0..47]
      puts "***"
      expect(error).to eq('param is missing or the value is empty: username')
    end

    it 'returns an error when password is missing' do
      post '/api/v1/authenticate', params: { username: "fred" }

      error = response_body["error"][0..47]

      expect(response).to have_http_status :unprocessable_entity
      expect(error).to eq('param is missing or the value is empty: password')
      #expect(response_body[0...48]).to eq({'error' => 'param is missing or the value is empty: password'})
    end
  end
end
