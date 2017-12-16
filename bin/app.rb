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

  def write(answer, sizepencil, orangeanswer, redanswer, blueanswer, greenanswer)

    @lead = sizepencil

    if sizepencil == ".5mm"
      @originallength = 500
      @length = 500
    else
      @originallength = 700
      @length = 700
    end

    @length = (@length - $answer.length)

    $nicework = "Nice work! Here's what you have written so far on the paper: " "<font color='orange'>" "#{$orangeanswer}" "</font>" "<font color='red'>" " #{$redanswer}" "</font>" "<font color='blue'>" " #{$blueanswer}" "</font>" "<font color='green'>" " #{$greenanswer}" "</font>" ". This pencil is able to write #{@length} more characters until it runs out of lead. This size #{@lead} pencil originally could write #{@originallength} characters."
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

# This is a sorting algorithm class data structure that sorts the array of characters written
class SORT
    def initialize()
      @string
    end

    def sortstring(answer)
      $arrayofstrings = answer.split("")
      $sortedarray = $arrayofstrings.sort
      @string = $sortedarray.join
    end

    def string()
      @string
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
  $orangeanswer = $answer

  # Create orange pencil instance
  $orangepencil = PENCIL.new()
  $orangepencil.write($answer, $lead, $orangeanswer, $redanswer, $blueanswer, $greenanswer)
  $orangelead = $orangepencil.lead
  $orangeoriginallength = $orangepencil.originallength
  $orangelength = $orangepencil.length

  # Sort words
  $orangesortclass = SORT.new()
  $orangesortclass.sortstring($orangeanswer)
  $orangesortedstring = $orangesortclass.string

  # Renders the index view with the parameters.
  erb :pencil2, :locals => {'paper' => $paper, 'nicework' => $nicework, 'orangelead' => $orangelead, 'orangeoriginallength' => $orangeoriginallength, 'orangelength' => $orangelength, 'orangeanswer' => $orangeanswer, 'orangesortedstring' => $orangesortedstring}
end


get '/1/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil2
end

post '/1/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]
  $redanswer = $answer

  # Create red pencil instance
  $redpencil = PENCIL.new()
  $redpencil.write($answer, $lead, $orangeanswer, $redanswer, $blueanswer, $greenanswer)
  $redlead = $redpencil.lead
  $redoriginallength = $redpencil.originallength
  $redlength = $redpencil.length

  # Sort words
  $redsortclass = SORT.new()
  $redsortclass.sortstring($redanswer)
  $redsortedstring = $redsortclass.string

  # Renders the next view with the parameters.
  erb :pencil3, :locals => {'paper' => $paper, 'nicework' => $nicework, 'redlead' => $redlead, 'redoriginallength' => $redoriginallength, 'redlength' => $redlength, 'redanswer' => $redanswer, 'redsortedstring' => $redsortedstring}
end


get '/2/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil3
end

post '/2/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]
  $blueanswer = $answer

  # Create blue pencil instance
  $bluepencil = PENCIL.new()
  $bluepencil.write($answer, $lead, $orangeanswer, $redanswer, $blueanswer, $greenanswer)
  $bluelead = $bluepencil.lead
  $blueoriginallength = $bluepencil.originallength
  $bluelength = $bluepencil.length

  # Sort words
  $bluesortclass = SORT.new()
  $bluesortclass.sortstring($blueanswer)
  $bluesortedstring = $bluesortclass.string

  # Renders the next view with the parameters.
  erb :pencil4, :locals => {'paper' => $paper, 'nicework' => $nicework, 'bluelead' => $bluelead, 'blueoriginallength' => $blueoriginallength, 'bluelength' => $bluelength, 'blueanswer' => $blueanswer, 'bluesortedstring' => $bluesortedstring}
end


get '/3/' do
  # Creates a form that gets parameters and makes them available to the post command.
  erb :pencil4
end

post '/3/' do
  # Takes the parameters made available by the form.
  $lead = params[:lead]
  $answer = params[:answer]
  $greenanswer = $answer

  # Create green pencil instance
  $greenpencil = PENCIL.new()
  $greenpencil.write($answer, $lead, $orangeanswer, $redanswer, $blueanswer, $greenanswer)
  $greenlead = $greenpencil.lead
  $greenoriginallength = $greenpencil.originallength
  $greenlength = $greenpencil.length

  # Sort words
  $greensortclass = SORT.new()
  $greensortclass.sortstring($greenanswer)
  $greensortedstring = $greensortclass.string

  # Renders the next view with the parameters.
  erb :pencil5, :locals => {'paper' => $paper, 'nicework' => $nicework, 'greenlead' => $greenlead, 'greenoriginallength' => $greenoriginallength, 'greenlength' => $greenlength, 'greenanswer' => $greenanswer, 'greensortedstring' => $greensortedstring}

end
