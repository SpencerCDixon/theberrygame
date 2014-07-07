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
    puts "Month: ".red + $months.current_month.month_name.capitalize.yellow + "   SCOREBOARD   ".colorize(:white) + "    Round #: ".red +  $round.default_turn_count.to_s.yellow
    puts "---------------------------------------------".colorize(:yellow)
    print "[Red: ".green + red.berry_count.to_s.magenta + "] ".green
    print "[Blue: ".green + blue.berry_count.to_s.magenta + "] ".green
    print "[Purple: ".green + purple.berry_count.to_s.magenta + "] ".green
    puts " "
    puts "---------------------------------------------".colorize(:yellow)
  end



end


