require './berry_class.rb'
require './scoreboard.rb'
require './weather.rb'

# Initializing weather, months, and time management



# Initializing Berry Objects
red = RedBerry.new(:berry_color => "red", :berry_count => 1)
blue = RedBerry.new(:berry_color => "blue", :berry_count => 1)
purple = RedBerry.new(:berry_color => "purple", :berry_count => 0)
black = RedBerry.new(:berry_color => "purple", :berry_count => 0)

scoreboard = Scoreboard.new(red, blue, purple, black )

puts scoreboard.show_score


puts "Which Berries would you like to combine?"
print "First Berry: "
berry_input1 = gets.chomp.downcase
print "Second Berry: "
berry_input2 = gets.chomp.downcase

# Berry converter: From string back to berry object.

if berry_input1 === "red" then berry_output1 = red end
if berry_input1 === "blue" then berry_output1 = blue end

if berry_input2 === "blue" then berry_output2 = blue end
if berry_input2 === "red" then berry_output2 = red end





case
  when berry_output1 == red && berry_output2 == blue then red.combine_berries(berry_output1, berry_output2, purple)

  else
    puts "Not sufficient berries."
  end
  puts purple.berry_count.to_s << " New Purple Berries!"
  puts scoreboard.show_score
