require './weather.rb'

# Keeps track of months and effects of months
class Turn
  attr_accessor :turn_count

  def initialize(args)
    @turn_count = args[:turn_count]
  end

  def default_turn_count
    turn_count[-1]
  end

  def next_round
    turn_count.pop
  end

  def month_check
    if turn_count == ["1"] then turn_count.push(5, 4, 3, 2, 1) end

  end

end

# Class to cycle through the months

class MonthCycle
  attr_accessor :month_count

  def initialize(args)
    @month_count = args[:month_count]
  end

  def current_month
    month_count[-1]
  end

  def next_month
    month_count.pop
  end

end

# Months and their % chance for certain weather

class Month
  attr_accessor :month_name, :rain_chance, :snow_chance, :drought_chance

  def initialize(args)
    @month_name = args[:month_name]
    @rain_chance = args[:rain_chance]
    @snow_chance = args[:snow_chance]
    @drought_chance = args[:drought_chance]
  end

  def raining?
    num = 1 + rand(100)
    if num <= rain_chance
      $weather.raining
      $weather.start_rain
    else
      snowing?
    end
  end

  def snowing?
    num = 1 + rand(100)
    if num <= snow_chance
      $weather.snowing
      $weather.start_snow
    else
      drought?

    end
  end

  def drought?
    num = 1 + rand(100)
    if num <= drought_chance
      $weather.drought
      $weather.start_drought
    else
      $weather.mild
      $weather.start_mild

    end
  end

end
