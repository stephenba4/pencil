require './bin/app.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_my_default
    get '/'
    assert_equal "Hello Stephen", last_response.body
  end

  def test_hello_form
    # Pretending to be a browser, this renders hello_form.erb.
    get '/1/'
    assert last_response.ok?
    assert last_response.body.include?('Write word 1:')
  end

  def test_hello_form_post
    # Pretending to be a browser, this renders index.erb.
    post '/1/', params={:word1 => 'This', :word2 => "Is"}
    assert last_response.ok?
    assert last_response.body.include?('Words so far...')
  end
end
