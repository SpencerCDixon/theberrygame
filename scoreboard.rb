require 'colorize'


class Scoreboard
attr_accessor :name

  def initialize(name)
    @name = name
  end

  def show_score
    puts "-----------------------------------------------".colorize(:yellow)
    puts "Month: ".red + $months.current_month.month_name.capitalize.yellow + "    SCOREBOARD   ".colorize(:white) + "    Round #: ".red +  $round.default_turn_count.to_s.yellow
    puts "-----------------------------------------------".colorize(:yellow)
    print "[White:  ".green + $white.berry_count.to_s.magenta + "] ".green
    print "[Black: ".green + $black.berry_count.to_s.magenta + "] ".green
    print "[Yellow: ".green + $yellow.berry_count.to_s.magenta + "] ".green
    print "[Green:  ".green + $green.berry_count.to_s.magenta + "] \n".green
    print "[Indigo: ".green + $indigo.berry_count.to_s.magenta + "] ".green
    print "[Red:   ".green + $red.berry_count.to_s.magenta + "] ".green
    print "[Blue:   ".green + $blue.berry_count.to_s.magenta + "] ".green
    print "[Purple: ".green + $purple.berry_count.to_s.magenta + "] \n".green
    print "[Brown:  ".green + $brown.berry_count.to_s.magenta + "] ".green
    print "[Gold:  ".green + $gold.berry_count.to_s.magenta + "] ".green
    print "[Tan:    ".green + $tan.berry_count.to_s.magenta + "] ".green
    print "[Pink:   ".green + $pink.berry_count.to_s.magenta + "] \n".green
    print "[Orange: ".green + $orange.berry_count.to_s.magenta + "] ".green
    print "[Teal:  ".green + $teal.berry_count.to_s.magenta + "] ".green
    print "[Maroon: ".green + $maroon.berry_count.to_s.magenta + "] ".green
    print "[Gray:   ".green + $gray.berry_count.to_s.magenta + "] ".green
    puts " "
    puts "-----------------------------------------------".colorize(:yellow)
  end



end


