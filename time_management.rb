# Keeps track of months and effects of months

class Turn
  attr_accessor :turn_count

  def initialize(args)
    @turn_count = args[:turn_count]
  end

  def default_turn_count
    @turn_count = 1
  end

  def next_round
    @turn_count = turn_count + 1
  end
end

# Class to cycle through the months


# Months and their % chance for certain weather

class Month
  attr_accessor :name_month, :rain_chance, :snow_chance, :drought_chance

  def initialize(args)
    @name_month = args(:name_month)
    @rain_chance = args(:rain_chance)
    @snow_chance = args(:snow_chance)
    @drought_chance = args(:drought_chance)
  end

end
