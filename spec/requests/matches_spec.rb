require 'rails_helper'

describe 'Matches API', type: :request do

  it 'returns all matches' do
    FactoryBot.create(:match, title: 'Match 001')
    FactoryBot.create(:match, title: 'Match 002')
    get '/matches'
    
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end

end
