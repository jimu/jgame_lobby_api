require 'rails_helper'

describe 'Matches API', type: :request do

  describe 'GET /matches' do
    it 'returns all matches' do

      FactoryBot.create(:match, title: 'Match 001')
      FactoryBot.create(:match, title: 'Match 002')
      get '/matches'
      
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'POST /matches' do
    it 'create a match' do
      expect {
        post '/matches', params: { match: {title: 'Match 005'}}
      }.to change {Match.count}.from(0).to(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /matches/:id' do

    let!(:match) { FactoryBot.create(:match, title: 'Match 001') }

    it 'deletes a match' do
        expect {
          delete "/matches/#{match.id}"
        }.to change {Match.count}.from(1).to(0)

        expect(response).to have_http_status(:no_content)
    end
  end
end
