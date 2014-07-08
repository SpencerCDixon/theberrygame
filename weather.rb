# Allows for color customization with weather
require 'colorize'

# Class for weather in The Berry Game
class Weather
  attr_accessor :rain, :snow

  def initialize(args)
    @rain = args[:rain]
    @snow = args[:snow]
  end

  def rain_level
    print "Water Levels: ".colorize(:light_blue) + rain.to_s.colorize(:light_blue) + "                "
  end

  def snow_level
    print "Snow Levels: ".colorize(:light_white) + snow.to_s.colorize(:light_white)
  end

  def raining
    @rain = rain + 2
    if snow > 0
      @snow = snow - 1
      @rain = rain + 1
    end
  end

  def snowing
    @snow = snow + 1
  end

  def mild
    @rain = rain - 1

    if snow > 0
      @snow = snow - 1
      @rain = rain + 1
    end
  end

  def drought
    @rain = rain - 3
    if snow >= 3
     @snow = snow - 3
     @rain = rain + 3
    elsif snow == 2
     @snow = snow - 2
     @rain = rain + 2
    elsif snow == 1
     @snow = snow - 1
     @rain = rain + 1
    end
  end

  def start_rain
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/3.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/3.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/4.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/4.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/5.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/5.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/3.0)
    puts " It has started raining...... "
  end

  def start_snow
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/3.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/3.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/4.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/4.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/5.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/5.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/6.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/3.0)
    puts " It has started snowing...... "
  end

  def start_drought
    puts "                        /   /   /   /   /   /".yellow
    sleep(1.0/3.0)
    puts "                      /   /   /   /   /   /  ".yellow
    sleep(1.0/3.0)
    puts "                    /   /   /   /   /   /    ".yellow
    sleep(1.0/3.0)
    puts "                  /   /   /   /   /   /      ".yellow
    sleep(1.0/3.0)
    puts "                /   /   /   /   /   /        ".yellow
    sleep(1.0/3.0)
    puts "              /   /   /   /   /   /          ".yellow

  end

  def start_mild
    puts " ~~~ ~~~~~~ ~~   ~~~~ ~~~ ~~~~ ~~ ~ ~~~~~~    "
    sleep(1.0/3.0)
    puts " ~~~ ~~ ~~~~~~   ~~~~~ ~~ ~~~~ ~~ ~ ~~~~~~    "
    sleep(1.0/3.0)
    puts " ~~~~~  ~~~~~~   ~~~~~~~~ ~~~~ ~~ ~ ~~~~~~    "
  end


end

