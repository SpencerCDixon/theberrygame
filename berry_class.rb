# This will be the top class of berries to be inherited from


class Berry
  attr_accessor :berry_count

  def initialize(args={})
    @berry_count = args[:berry_count]
    post_initialize(args)
  end

  def add_berry(num)
    if $weather.rain <= 2 || $weather.rain >= 11 then num = num - 1 end
    if $weather.rain >= 6 && $weather.rain <= 8 then num = num + 1 end
    if $weather.snow >= 1 then num = num - 1 end

    @berry_count += num
  end

  def use_berry(num)
    @berry_count -= num
  end

  def post_intialize(args)
    nil
  end

  def combine_berries(berry_output1, berry_output2, berry_outcome, num)
    berry_output1.use_berry(1)
    berry_output2.use_berry(1)
    new_berries = berry_outcome.add_berry(num)

    puts " "
    puts "You now have ".green << new_berries.to_s.green << " #{berry_outcome.berry_color} berries! ".green
  end

  def combine_2_berries(berry_output1, berry_output2, berry_outcome1, num1, berry_outcome2, num2)
    berry_output1.use_berry(1)
    berry_output2.use_berry(1)
    new_berries1 = berry_outcome1.add_berry(num1)
    new_berries2 = berry_outcome2.add_berry(num2)

    puts " "
    puts "You now have ".green << new_berries1.to_s.green << " #{berry_outcome1.berry_color} berries! ".green
    puts "You now have ".green << new_berries2.to_s.green << " #{berry_outcome2.berry_color} berries! ".green
  end

  def combine_3_berries(berry_output1, berry_output2, berry_outcome1, num1, berry_outcome2, num2, berry_outcome3, num3)
    berry_output1.use_berry(1)
    berry_output2.use_berry(1)
    new_berries1 = berry_outcome1.add_berry(num1)
    new_berries2 = berry_outcome2.add_berry(num2)
    new_berries3 = berry_outcome3.add_berry(num3)

    puts " "
    puts "You now have ".green << new_berries1.to_s.green << " #{berry_outcome1.berry_color} berries! ".green
    puts "You now have ".green << new_berries2.to_s.green << " #{berry_outcome2.berry_color} berries! ".green
    puts "You now have ".green << new_berries3.to_s.green << " #{berry_outcome3.berry_color} berries! ".green
  end

  def new_berries
    display = @berry_count - combine_berries
    puts display.to_s
  end

  def berry_count_check(berry_input, berry_number)
    if @berry_count == 0
      puts "Seems you don't have enough berries for that.".red
      puts "Try a berry type that you have in stock.(See Scoreboard)".red
      print berry_number
      berry_input = gets.chomp.downcase
    end
  end


end


class RedBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class YellowBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class GreenBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class WhiteBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class BlackBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class GrayBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class TanBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class PinkBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class IndigoBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class BrownBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class BlueBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class OrangeBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class MaroonBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class TealBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class PurpleBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end

class GoldBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

  def berry_color
    @berry_color
  end
end







