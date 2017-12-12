require 'sinatra'

set :port, 8081
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
  # Can create an  instance of a pencil and require input from the user on the browser. The input can be used to update the paper class then could return the writing on the paper class to the browser.
  return "Hello world"
end

get '/hello/' do
  # Creates a form that gets two parameters and makes them available to the post command.
  erb :hello_form
end

post '/hello/' do
  # Takes the parameters from made available by the form.
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"
  # Renders the index view with the parameters.
  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
