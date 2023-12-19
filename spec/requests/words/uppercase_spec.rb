require 'rspec'
include RSpec
require "rails_helper"

RSpec.describe '/uppercase', type: :request do
  describe '#uppercase' do
    context 'valid params' do
      it 'converts the word to uppercase' do
        get "/uppercase", :params => { :word => 'tester' }
        expect(response).to have_http_status(200)
        expect(JSON.parse(response.body)['data']).to eq('TESTER')
      end
    end
  end
end