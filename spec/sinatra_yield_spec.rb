require 'spec_helper'
describe App do

  describe 'GET /' do
    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end
end
