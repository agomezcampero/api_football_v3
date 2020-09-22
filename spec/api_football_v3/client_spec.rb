require 'helper'

describe ApiFootballV3::Client do
  let(:base_url) { BASE_URL }
  let(:api_key) { 'xXxXxXxXxXxXxXxXxXxXxXxXxXxXxX' }

  it 'can set the base url' do
    client = described_class.new(base_url: base_url)
    expect(client.base_url).to eq(base_url)
  end

  it 'can set the api key' do
    client = described_class.new(api_key: api_key)
    expect(client.api_key).to eq(api_key)
  end
end
