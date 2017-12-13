require 'sinatra'

# This sets up my server on port 8081
set :port, 8081
set :static, true
set :public_folder, "static"
set :views, "views"


get '/' do
  # Creates a form that gets two parameters and makes them available to the post command.
  erb :step1
end

post '/' do
  # Takes the parameters from made available by the form.
  $word1 = params[:word1] || "Word 1"
  $word2 = params[:word2] || "Word 2"

  $myPencil = pencil.new()
  pencil.write($word1)


  # Renders the index view with the parameters.
  erb :step2, :locals => {'word1' => $word1, 'word2' => $word2}
end

get '/1/' do
  erb :step2
end

post '/1/' do
  # Takes the parameters from made available by the form.
  $word3 = params[:word3] || "Word 3"
  $word4 = params[:word4] || "Word 4"
  # Renders the index view with the parameters.
  erb :step3, :locals => {'word1' => $word1, 'word2' => $word2,
                           'word3' => $word3, 'word4' => $word4}
end
