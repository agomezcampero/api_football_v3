require 'helper'

RSpec.shared_examples "mapped endpoints" do |endpoints|
  let(:client) { ApiFootball::Client.new(base_url: 'https://www.api-football.com', api_key: 'AK') }

  endpoints.each do |method, path, options|
    before do
      stub_get(path).with(query: options).to_return(body: '{}')
    end

    it "makes the request" do
      options ? client.send(method, options) : client.send(method)
      expect(a_get(path).with(query: options)).to have_been_made
    end
  end
end