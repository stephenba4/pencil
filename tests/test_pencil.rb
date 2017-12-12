require './bin/app.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_step1
    # Pretending to be a browser, this renders step1.erb.
    get '/'
    assert last_response.ok?
    assert last_response.body.include?('Write word 1:')
  end

  def test_step2
    # Pretending to be a browser, this renders step2.erb.
    post '/', params={:word1 => 'This', :word2 => "Is"}
    assert last_response.ok?
    assert last_response.body.include?('Words so far...')
  end
end
