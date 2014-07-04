require 'colorize'

class Scoreboard
attr_accessor :red, :blue, :purple

  def initialize(args)
    @red = args[:red]
    @blue = args[:blue]
    @purple = args[:purple]

  end

  def show_score
    puts "---------------------------------------------".colorize(:yellow)
    puts "                 SCOREBOARD                  ".colorize(:yellow)
    puts "---------------------------------------------".colorize(:yellow)
    print "[Red: " + red.berry_count.to_s + "] "
    print "[Blue: " + blue.berry_count.to_s + "] "
    print "[Purple: " + purple.berry_count.to_s + "] "
  end



end


