# Class for weather in The Berry Game

class Weather
  attr_accessor :rain, :snow

  def initialize(args)
    @rain = args[:rain]
    @snow = args[:snow]
  end

  def rain_level
    puts "Water Levels: " + rain.to_s + (" " +("|" * rain))
  end

  def snow_level
    puts "Snow Levels: " + snow.to_s + (" " +("|" * snow))
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
end

