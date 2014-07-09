# Class to display instructions

class TextInstructions
  attr_accessor :name

  def initialize(args)
    @name = args[:name]
  end

  def welcome
    puts "-----------------------------------------------"
    puts "Welcome to the berry game! You are a novice berry"
    puts "farmer on a journey to become a Master. In "
    puts "order to become a Master Berry Farmer you must   "
    puts "discover each species of berry.  Some are rarer  "
    puts "than others.  There are 16 berry species in total. "
    puts " "
    puts "To discover new berries you just combine two berries"
    puts "together to get new berries. To start off you get "
    puts "3 yellow, 3 white, and 3 black berries."
    puts " "
    puts "You are given 1 year to discover all the berries."
    puts "Each month you will have 5 rounds to make new    "
    puts "berries and then it will become the next month. "
    puts "Make sure to use your time wisely!"
    puts " "
    puts "IMPORTANT: In order to win the game you must have AT"
    puts "LEAST 1 of each berry in your scoreboard. Just like"
    puts "in real life, the weather is constantly changing. The"
    puts "weather will affect your berries so be careful. As"
    puts "the weather changes it might affect your snow and "
    puts "water levels so keep an eye on those."
    puts " "
    puts "You may only combine berries that you already have."
    puts "So don't try and combine a berry if the scoreboard "
    puts "says you have 0 of them."
    puts " "
    puts "If you ever want to quit the game feel free to type"
    puts "'Quit' or 'Exit'"



  end

  def lose
    puts "OH NOOO!!!!!!!"
    puts " "
    puts "Your water levels got too high and your berry farm "
    puts "flooded. Better luck next time!"
  end

  def no_time
    puts "GAME OVER. You ran out of time. Better luck next time!"

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
