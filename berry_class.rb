# This will be the top class of berries to be inherited from


class Berry
  attr_accessor :berry_count

  def initialize(args={})
    @berry_count = args[:berry_count]
    post_initialize(args)
  end

  def add_berry(num)
    if $weather.rain <= 2 || $weather.rain >= 11
      num = num - 1
    elsif $weather.rain >= 6 && $weather.rain <= 8
      num = num + 1
    end

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
    berry_outcome.add_berry(num)
    # + berry production

    puts berry_outcome.berry_count.to_s.green + " New" + berry_outcome.berry_color + " Berries!"
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
  # def berry_production_monthly
  # end

end







