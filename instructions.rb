# Class to display instructions

class TextInstructions
  attr_accessor :name

  def initialize(args)
    @name = args[:name]
  end

  def welcome
    puts "-----------------------------------------------"
    puts "Welcome to the berry game! You are a berry farmer"
    sleep 2
    puts "on a journey to become a Master Berry Farmer. In "
    sleep 2
    puts "order to become a Master Berry Farmer you must   "
    sleep 2
    puts "discover each species of berry. (Some are rarer  "
    sleep 2
    puts "than others)"
    sleep 3
    puts " "
    puts "You are given 1 year to discover all the berries."
    sleep 2
    puts "Each month you will have 5 rounds to make new    "
    sleep 2
    puts "berries. In order to win the game you must have AT"
    sleep 2
    puts "LEAST 1 of each berry in your scoreboard. Just like"
    sleep 2
    puts "in real life the weather is constantly changing. The"
    sleep 2
    puts "weather will affect your berries so be careful."
    sleep 3
    puts " "
    puts "You may only combine berries that you already have."
    sleep 2
    puts "So don't try and combine a berry if the scoreboard "
    sleep 2
    puts "says you have 0. To combine berries, just type their"
    sleep 2
    puts "name into the prompt when asked."
  end

  def lose
    puts "OH NOOO!!!!!!!"
    puts " "
    puts "Your water levels got too high and your berry farm "
    puts "flooded. Better luck next time!"
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
    puts " "
    puts"-----------------------------------------------".light_white
    sleep (1.0/8.0)
    puts"--  --------  -----  ----    -----  ---  --  --".light_white
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  -  ----  ---  --  --".light_white
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  --  ---  ---  --  --".light_white
    sleep (1.0/8.0)
    puts"--  --    --  -----  ----  ---  --  ---  --  --".light_white
    sleep (1.0/8.0)
    puts"--  -  --  -  -----  ----  ----  -  -----------".light_white
    sleep (1.0/8.0)
    puts"---    ---    -----  ----  -----    ---  --  --".light_white
    sleep (1.0/8.0)
    puts"----  -----  ------  ----  ------   ---  --  --".light_white
    sleep (1.0/8.0)
    puts"-----------------------------------------------".light_white
    sleep (1.0/8.0)
    puts " "
    puts"-----------------------------------------------".red
    sleep (1.0/8.0)
    puts"--  --------  -----  ----    -----  ---  --  --".red
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  -  ----  ---  --  --".red
    sleep (1.0/8.0)
    puts"--  --------  -----  ----  --  ---  ---  --  --".red
    sleep (1.0/8.0)
    puts"--  --    --  -----  ----  ---  --  ---  --  --".red
    sleep (1.0/8.0)
    puts"--  -  --  -  -----  ----  ----  -  -----------".red
    sleep (1.0/8.0)
    puts"---    ---    -----  ----  -----    ---  --  --".red
    sleep (1.0/8.0)
    puts"----  -----  ------  ----  ------   ---  --  --".red
    sleep (1.0/8.0)
    puts"-----------------------------------------------".red
    sleep (1.0/8.0)
    puts " "
    puts "Congratulations! You are a berry master! For comments,"
    puts "suggestions, or to report a bug please email Spencer "
    puts "at: spencercdixon@gmail.com "
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
