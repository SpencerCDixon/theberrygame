

class Scoreboard
attr_accessor :red, :blue, :purple

  def initialize(red, blue, purple)
    @red = red
    @blue = blue
    @purple = purple
  end

  def show_score

    print "Red Berry Count: " + red.berry_count.to_s + "  "
    print "Blue Berry Count: " + blue.berry_count.to_s + "  "
    print "Purple Berry Count: " + purple.berry_count.to_s + "  "
  end



end


