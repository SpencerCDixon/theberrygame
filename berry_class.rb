# This will be the top class of berries to be inherited from

class Berry

  attr_accessor :berry_count

  def initialize(args={})
    @berry_count = args[:berry_count]
    post_initialize(args)
  end

  def add_berry(num)
    @berry_count += num
  end

  def use_berry(num)
    @berry_count -= num
  end

  def post_intialize(args)
    nil
  end

end

class RedBerry < Berry

  def post_initialize(args)
    @berry_color = args[:berry_color]
    @berry_count = args[:berry_count] || 0
  end

end






red = RedBerry.new(:berry_color => "red")

puts red.berry_count
red.add_berry(10)
puts red.berry_count
