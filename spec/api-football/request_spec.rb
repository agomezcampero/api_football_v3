require 'helper'

describe ApiFootball::Request do
  let(:client) { ApiFootball::Client.new(base_url: 'https://www.api-football.com', api_key: 'AK') }
  let(:options) { { a: 1, b: 2 } }

  describe 'get' do
    context 'when successful' do
      before do
        stub_get('/timezone').to_return(body: fixture('timezones.json'))
        stub_get('/timezone').with(query: options).to_return(body: fixture('timezones.json'))
      end

      it 'makes a request to the api' do
        client.get('/timezone')
        expect(a_get('/timezone')).to have_been_made
      end

      it 'adds the api key as a header' do
        client.get('/timezone')
        expect(a_get('/timezone').with(headers: { 'x-rapidapi-key': 'AK' })).to have_been_made
      end

      it 'adds options if included' do
        client.get('/timezone', options)
        expect(a_get('/timezone').with(query: options)).to have_been_made
      end
    end

    context 'when failed' do
      ApiFootball::Error::ERRORS.each do |status, exception|
        context "when HTTP status is #{status}" do
          before do
            stub_get('/timezone').to_return(status: status, body: '{}')
          end

          it "raises #{exception}" do
            expect { client.get('/timezone') }.to raise_error(exception)
          end
        end
      end
    end
  end
end
