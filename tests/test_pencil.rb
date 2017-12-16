require './bin/app.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_pencil1
    # Pretending to be a browser, this renders pencil1.erb.
    get '/'
    assert last_response.ok?
    assert last_response.body.include?("This is an application")
  end

  def test_pencil2
    # Pretending to be a browser, this renders pencil2.erb.
    post '/', params={:lead => ".5mm", :answer => "Hello"}
    assert last_response.ok?
    assert last_response.body.include?("Hello")
  end

  def test_pencil3
    # Pretending to be a browser, this renders pencil3.erb.
    post '/', params={:lead => ".7mm", :answer => "How"}
    assert last_response.ok?
    assert last_response.body.include?("How")
  end

  def test_pencil4
    # Pretending to be a browser, this renders pencil4.erb.
    post '/', params={:lead => ".5mm", :answer => "Are"}
    assert last_response.ok?
    assert last_response.body.include?("Are")
  end

  def test_pencil5
    # Pretending to be a browser, this renders pencil5.erb.
    post '/', params={:lead => ".7mm", :answer => "You?"}
    assert last_response.ok?
    assert last_response.body.include?("You?")
  end
end
