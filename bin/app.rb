require 'sinatra'

# This sets up my server on port 8081
set :port, 8081
set :static, true
set :public_folder, "static"
set :views, "views"

# This is the class PENCIL that will be instantiated by four different colored pencils
class PENCIL

  def initialize()
    @originallength
    @length
    @lead
  end

  attr_reader   :originallength
  attr_accessor :length
  attr_accessor :lead

  def write(paper, answer, sizepencil)

    @lead = sizepencil

    if sizepencil == ".5mm"
      @originallength = 500
      @length = 500
    else
      @originallength = 700
      @length = 700
    end

    @length = (@length - $answer.length)
    $paper = "#{$paper} #{$answer}"
    $paper = $paper.strip
    $nicework = "Nice work! Here's what you have written so far on the paper: '#{$paper}'. This pencil is able to write #{@length} more characters until it runs out of lead. This size #{@lead} pencil originally could write #{@originallength} characters."
  end

  def lead()
    @lead
  end

  def originallength()
    @originallength
  end

  def length()
    @length
  end

end

get '/' do
  # This creates a global paper string variable that each instance of the PENCIL class will write on in a way that all PENCILs' words will be seen together on the paper.
  $paper = ""
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil1
end

post '/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]

  $orangepencil = PENCIL.new()
  $orangepencil.write($paper, $answer, $lead)
  $orangelead = $orangepencil.lead
  $orangeoriginallength = $orangepencil.originallength
  $orangelength = $orangepencil.length

  # Renders the index view with the parameters.
  erb :pencil2, :locals => {'paper' => $paper, 'nicework' => $nicework, 'orangelead' => $orangelead,
                               'orangeoriginallength' => $orangeoriginallength,
                               'orangelength' => $orangelength}
end


get '/1/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil2
end

post '/1/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]

  $redpencil = PENCIL.new()
  $redpencil.write($paper, $answer, $lead)
  $redlead = $redpencil.lead
  $redoriginallength = $redpencil.originallength
  $redlength = $redpencil.length

  # Renders the next view with the parameters.
  erb :pencil3, :locals => {'paper' => $paper, 'nicework' => $nicework, 'orangelead' => $orangelead,
                               'orangeoriginallength' => $orangeoriginallength,
                               'orangelength' => $orangelength, 'redlead' => $redlead,
                               'redoriginallength' => $redoriginallength,
                               'redlength' => $redlength}
end


get '/2/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil3
end

post '/2/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]

  $bluepencil = PENCIL.new()
  $bluepencil.write($paper, $answer, $lead)
  $bluelead = $bluepencil.lead
  $blueoriginallength = $bluepencil.originallength
  $bluelength = $bluepencil.length

  # Renders the next view with the parameters.
  erb :pencil4, :locals => {'paper' => $paper, 'nicework' => $nicework, 'orangelead' => $orangelead,
                               'orangeoriginallength' => $orangeoriginallength,
                               'orangelength' => $orangelength, 'redlead' => $redlead,
                               'redoriginallength' => $redoriginallength,
                               'redlength' => $redlength, 'bluelead' => $bluelead,
                               'blueoriginallength' => $blueoriginallength,
                               'bluelength' => $bluelength}
end


get '/3/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil4
end

post '/3/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]

  $greenpencil = PENCIL.new()
  $greenpencil.write($paper, $answer, $lead)
  $greenlead = $greenpencil.lead
  $greenoriginallength = $greenpencil.originallength
  $greenlength = $greenpencil.length

  # Renders the next view with the parameters.
  erb :pencil5, :locals => {'paper' => $paper, 'nicework' => $nicework, 'orangelead' => $orangelead,
                               'orangeoriginallength' => $orangeoriginallength,
                               'orangelength' => $orangelength, 'redlead' => $redlead,
                               'redoriginallength' => $redoriginallength,
                               'redlength' => $redlength, 'bluelead' => $bluelead,
                               'blueoriginallength' => $blueoriginallength,
                               'bluelength' => $bluelength, 'greenlead' => $greenlead,
                               'greenoriginallength' => $greenoriginallength,
                               'greenlength' => $greenlength}

end
