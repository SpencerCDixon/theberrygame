require './berry_class.rb'
require './scoreboard.rb'

red = RedBerry.new(:berry_color => "red", :berry_count => 1)
blue = RedBerry.new(:berry_color => "blue", :berry_count => 1)
purple = RedBerry.new(:berry_color => "purple", :berry_count => 0)
scoreboard = Scoreboard.new(red, blue, purple)

puts scoreboard.show_score


puts "Which Berries would you like to combine?"
print "First Berry: "
berry1 = gets.chomp.downcase
print "Second Berry: "
berry2 = gets.chomp.downcase

case
  when berry1 == "red" && berry2 == "blue"
    red.use_berry(1)
    blue.use_berry(1)
    purple.add_berry(3)
  else
    puts "Not sufficient berries."
  end
  puts purple.berry_count.to_s << " New Purple Berries!"
