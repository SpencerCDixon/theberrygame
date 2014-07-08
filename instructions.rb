# Class to display instructions

class TextInstructions
  attr_accessor :name

  def initialize(args)
    @name = args[:name]
  end

  def welcome
    puts "-----------------------------------------------"
    puts "Welcome to the berry game! You are a berry farmer"
    puts "in search of the rarest breeds of berries. The "
    puts "objective of the game is to breed one of each  "
    puts "species of berry."
  end

  def lose
    puts "Better luck next time :("
  end


  def win
    puts"-----------------------------------------------".light_blue
    sleep (1.0/8.0)
    puts"--  --------  -----  ----    -----  ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  -  ----  ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  --  ---  ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"--  --    --  -----  ----  ---  --  ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"--  -  --  -  -----  ----  ----  -  -----------".light_blue
    sleep (1.0/8.0)
    puts"---    ---    -----  ----  -----    ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"----  -----  ------  ----  ------   ---  --  --".light_blue
    sleep (1.0/8.0)
    puts"-----------------------------------------------".light_blue
    sleep (1.0/8.0)
  end

  def loading
    print "L"
    sleep (1.0/8.0)
    print "O"
    sleep (1.0/8.0)
    print "A"
    sleep (1.0/8.0)
    print "D"
    sleep (1.0/8.0)
    print "I"
    sleep (1.0/8.0)
    print "N"
    sleep (1.0/8.0)
    print "G"
    sleep (1.0/8.0)
    print " "
    sleep (1.0/8.0)
    print "N"
    sleep (1.0/8.0)
    print "E"
    sleep (1.0/8.0)
    print "X"
    sleep (1.0/8.0)
    print "T"
    sleep (1.0/8.0)
    print " "
    sleep (1.0/8.0)
    print "R"
    sleep (1.0/8.0)
    print "O"
    sleep (1.0/8.0)
    print "U"
    sleep (1.0/8.0)
    print "N"
    sleep (1.0/8.0)
    print "D"
    sleep (1.0/6.0)
    print "."
    sleep (1.0/5.0)
    print "."
    sleep (1.0/4.0)
    print "."
    sleep (1.0/3.0)
    print "."
    sleep (1.0/2.0)
    print "."
    sleep (1.0/2.0)
    print "."

  end

end
