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
    puts "Water Levels: ".colorize(:light_blue) + rain.to_s.colorize(:light_blue) + (" " +("|" * rain)).colorize(:light_blue)
  end

  def snow_level
    puts "Snow Levels: ".colorize(:light_white) + snow.to_s.colorize(:light_white) + (" " +("|" * snow)).colorize(:light_white)
  end

  def raining
    @rain = rain + 3
    @snow = snow - 1
  end

  def snowing
    @snow = snow + 1
  end

  def mild
    @rain = rain - 1
    @snow = snow - 1
  end

  def drought
    @rain = rain - 3
    @snow = snow - 3
  end

  def start_rain
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/3.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/3.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/3.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/3.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    sleep(1.0/3.0)
    puts " | | | | | | | | | | | | | | | | | | | | | | ".blue
    sleep(1.0/3.0)
    puts "| | | | | | | | | | | | | | | | | | | | | | |".blue
    puts " It has started raining...... "
  end

  def start_snow
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/3.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/3.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/3.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/3.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/3.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    sleep(1.0/3.0)
    puts ". . . . . . . . . . . . . . . . . . . . . . .".light_white
    sleep(1.0/3.0)
    puts " . . . . . . . . . . . . . . . . . . . . . . ".light_white
    puts " It has started snowing...... "
  end

end

