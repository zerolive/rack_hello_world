require_relative '../application'
require 'minitest/autorun'
require 'rack/test'

describe 'Application' do
  include Rack::Test::Methods

  def app
    Application.new
  end

  it 'responds HTML' do
    get '/'

    last_response.body.must_equal('<h1>Hello ERB World!! </h1><h3>name</h3>')
  end

  it 'responds 404 if route does not exists' do
    get '/no/exists'

    last_response.status.must_equal(404)
  end
end
