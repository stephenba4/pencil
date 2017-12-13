class PENCIL

  def initialize()
    @length
    @lead
  end

  attr_accessor :length
  attr_accessor :lead

  def write(paper, answer, colorpencil)

    if colorpencil == ".5"
      @length = 50
    else
      @length = 70
    end

    @length = (@length - $answer.length)
    $paper = "#{$paper} #{$answer}"
    $paper = $paper.strip
    puts "Nice work! Here's what you have written so far in your notebook: #{$paper}. This pencil is able to write #{@length} more characters until it runs out of lead."
  end

end

puts "Would you like to create OrangePencil with .5 or .7 lead? (Type .5 or .7)"
$answer = gets.chomp
orangepencil = PENCIL.new()

if $answer == ".7"
  orangepencil.lead = ".7"
elsif $answer == ".5"
  orangepencil.lead = ".5"
else
  # Need to create route from here.
  orangepencil = ""
  puts "OrangePencil not created."
end

if orangepencil != ""
  puts "Write some words in the notebook with OrangePencil:"
  $answer = gets.chomp
  orangepencil.write($paper, $answer, orangepencil.lead)
  puts "Would you like to 1. write more words with OrangePencil or 2. create RedPencil? (Type 1 or 2):"
  $answer = gets.chomp

  if $answer == '1'
    puts "Write more here: "
    $answer = gets.chomp
    orangepencil.write($paper, $answer, orangepencil.lead)
    puts "You have written in the notebook twice with OrangePencil! Good job!"
  elsif $answer == '2'
    puts "Would you like to create RedPencil with .5 or .7 lead? (Type .5 or .7)"
    $answer = gets.chomp
    redpencil = PENCIL.new()

    if $answer == ".7"
      redpencil.lead = ".7"
    elsif $answer == ".5"
      redpencil.lead = ".5"
    else
      redpencil = ""
      puts "Sorry, RedPencil was not created."
    end

    if redpencil != ""
      puts "Write some words in the notebook with RedPencil:"
      $answer = gets.chomp
      redpencil.write($paper, $answer, redpencil.lead)
      puts "You have written in the notebook with both pencils! Good job!"
    end

  else
    puts "It's OK! You don't have to do either."
  end
end

puts "Game Over."
