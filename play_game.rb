require './berry_class.rb'
require './scoreboard.rb'
require './weather.rb'
require './time_management.rb'
require './instructions.rb'

# Initializing Berry Objects
$red = RedBerry.new(berry_color: "red", berry_count: 0)
$blue = BlueBerry.new(berry_color: "blue", berry_count: 0)
$purple = PurpleBerry.new(berry_color: "purple", berry_count: 0)
$pink = PinkBerry.new(berry_color: "pink", berry_count: 0)
$green = GreenBerry.new(berry_color: "green", berry_count: 0)
$white = WhiteBerry.new(berry_color: "white", berry_count: 3)
$black = BlackBerry.new(berry_color: "black", berry_count: 3)
$gray = GrayBerry.new(berry_color: "gray", berry_count: 0)
$indigo = IndigoBerry.new(berry_color: "indigo", berry_count: 0)
$brown = BrownBerry.new(berry_color: "brown", berry_count: 0)
$orange = OrangeBerry.new(berry_color: "orange", berry_count: 0)
$maroon = MaroonBerry.new(berry_color: "maroon", berry_count: 0)
$teal = TealBerry.new(berry_color: "teal", berry_count: 0)
$gold = GoldBerry.new(berry_color: "gold", berry_count: 0)
$yellow = YellowBerry.new(berry_color: "yellow", berry_count: 3)
$tan = TanBerry.new(berry_color: "tan", berry_count: 0)

# Initializing weather, months, time management, and scoreboard.
$round = Turn.new(turn_count: ["1",5,4,3,2,1,1])
$weather = Weather.new(rain: 7, snow: 0)
scoreboard = Scoreboard.new("scoreboard")
instructions = TextInstructions.new(name: "instructions")

# Months
startgame = Month.new(month_name: "start", rain_chance: 0, snow_chance: 0, drought_chance: 0) #Needed in order to set up months properly
january = Month.new(month_name: "january", rain_chance: 20, snow_chance: 70, drought_chance: 0)
february = Month.new(month_name: "february", rain_chance: 20, snow_chance: 40, drought_chance: 0)
march = Month.new(month_name: "march", rain_chance: 50, snow_chance: 10, drought_chance: 0)
april = Month.new(month_name: "april", rain_chance: 60, snow_chance: 0, drought_chance: 0)
may = Month.new(month_name: "may", rain_chance: 75, snow_chance: 0, drought_chance: 13)
june = Month.new(month_name: "june", rain_chance: 50, snow_chance: 25, drought_chance: 0)
july = Month.new(month_name: "july", rain_chance: 25, snow_chance: 38, drought_chance: 0)
august = Month.new(month_name: "august", rain_chance: 0, snow_chance: 0, drought_chance: 70)
september = Month.new(month_name: "september", rain_chance: 13, snow_chance: 0, drought_chance: 25)
october = Month.new(month_name: "october", rain_chance: 50, snow_chance: 25, drought_chance: 0)
november = Month.new(month_name: "november", rain_chance: 25, snow_chance: 38, drought_chance: 0)
december = Month.new(month_name: "december", rain_chance: 13, snow_chance: 63, drought_chance: 0)

# Month Rotation
$months = MonthCycle.new(month_count: [december,november,october,september,august,july,june,may,april,march,february,january,startgame])
month_tracker = [1, 1, 1, 1, 1]

# Game instructions and start

loop do
  puts instructions.welcome

  print "When you're ready type 'start' and press ENTER: "
  player_input = gets.chomp.downcase

  break if player_input == "start"

end


loop do
  break if $months.current_month.month_name == "december" && $round.default_turn_count == 5
# Cycles through the $months array after the appropriate number of turns.
# Also checks weather when it becomes a new month every 5 turns
month_tracker = month_tracker.push(1)

  if month_tracker == [1, 1, 1, 1, 1, 1]
     $months.next_month
     month_tracker = [1]
     $months.current_month.raining?
  end

  # Time Keeper
  $round.month_check
  $round.next_round

  # Display scoreboard and weather levels
  puts " "
  print $weather.rain_level
  print $weather.snow_level
  puts " "
  puts scoreboard.show_score

  # All possible berries to check to make sure player selects one.
  berry_array = ["red", "blue", "purple", "green", "white", "black", "yellow", "gray", "tan", "teal", "indigo", "brown", "orange","maroon", "gold", "pink"]
  # Get the first berry input from the player.

  puts "Which two berries would you like to combine? "
  puts "(type berry name in with no spaces then press ENTER)"
  puts " "

  loop do
    print "First Berry: "
    berry_input1 = gets.chomp.downcase

    unless berry_array.include?(berry_input1) == true
      puts "Please select a real berry. Look at scoreboard to see options.".red
      print "First Berry: "
      berry_input1 = gets.chomp.downcase
    end

    # Convert the input back to the berry class to do a quick berry check
    if berry_input1 === "red" then $berry_converted1 = $red end
    if berry_input1 === "blue" then $berry_converted1 = $blue end
    if berry_input1 === "purple" then $berry_converted1 = $purple end
    if berry_input1 === "green" then $berry_converted1 = $green end
    if berry_input1 === "white" then $berry_converted1 = $white end
    if berry_input1 === "black" then $berry_converted1 = $black end
    if berry_input1 === "yellow" then $berry_converted1 = $yellow end
    if berry_input1 === "gray" then $berry_converted1 = $gray end
    if berry_input1 === "tan" then $berry_converted1 = $tan end
    if berry_input1 === "teal" then $berry_converted1 = $teal end
    if berry_input1 === "indigo" then $berry_converted1 = $indigo end
    if berry_input1 === "brown" then $berry_converted1 = $brown end
    if berry_input1 === "orange" then $berry_converted1 = $orange end
    if berry_input1 === "maroon" then $berry_converted1 = $maroon end
    if berry_input1 === "gold" then $berry_converted1 = $gold end
    if berry_input1 === "pink" then $berry_converted1 = $pink end

      if $berry_converted1.berry_count == 0
         puts "Seems you don't have enough berries for that.".red
         puts "Try a berry type that you have in stock.(See Scoreboard)".red
      end

      break if $berry_converted1.berry_count >= 1
  end

  # Get second berry input from player.
  loop do
    print "Second Berry: "
    berry_input2 = gets.chomp.downcase

    unless berry_array.include?(berry_input2) == true
      puts "Please select a real berry. Look at scoreboard to see options.".red
      print "Second Berry: "
      berry_input2 = gets.chomp.downcase
    end

    # Convert the input back to the berry class to do a quick berry check
    if berry_input2 === "red" then $berry_converted2 = $red end
    if berry_input2 === "blue" then $berry_converted2 = $blue end
    if berry_input2 === "purple" then $berry_converted2 = $purple end
    if berry_input2 === "green" then $berry_converted2 = $green end
    if berry_input2 === "white" then $berry_converted2 = $white end
    if berry_input2 === "black" then $berry_converted2 = $black end
    if berry_input2 === "yellow" then $berry_converted2 = $yellow end
    if berry_input2 === "gray" then $berry_converted2 = $gray end
    if berry_input2 === "tan" then $berry_converted2 = $tan end
    if berry_input2 === "teal" then $berry_converted2 = $teal end
    if berry_input2 === "indigo" then $berry_converted2 = $indigo end
    if berry_input2 === "brown" then $berry_converted2 = $brown end
    if berry_input2 === "orange" then $berry_converted2 = $orange end
    if berry_input2 === "maroon" then $berry_converted2 = $maroon end
    if berry_input2 === "gold" then $berry_converted2 = $gold end
    if berry_input2 === "pink" then $berry_converted2 = $pink end

      if $berry_converted1.berry_count == 0
         puts "Seems you don't have enough berries for that.".red
         puts "Try a berry type that you have in stock.(See Scoreboard)".red
      end

      break if $berry_converted1.berry_count >= 1
  end

  ### BERRY OUTPUTS ###
  case


      # Same colored berry combinations
    when $berry_converted1 == $red && $berry_converted2 == $red then $red.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when $berry_converted1 == $yellow && $berry_converted2 == $yellow then $yellow.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when $berry_converted1 == $white && $berry_converted2 == $white then $white.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when $berry_converted1 == $black && $berry_converted2 == $black then $black.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when $berry_converted1 == $green && $berry_converted2 == $green then $green.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when $berry_converted1 == $gray && $berry_converted2 == $gray then $gray.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when $berry_converted1 == $brown && $berry_converted2 == $brown then $brown.combine_berries($berry_converted1, $berry_converted2, $brown, 3)
    when $berry_converted1 == $blue && $berry_converted2 == $blue then $blue.combine_berries($berry_converted1, $berry_converted2, $blue, 3)
    when $berry_converted1 == $orange && $berry_converted2 == $orange then $orange.combine_berries($berry_converted1, $berry_converted2, $orange, 3)
    when $berry_converted1 == $tan && $berry_converted2 == $tan then $tan.combine_2_berries($berry_converted1, $berry_converted2, $yellow, 2, $gray, 1)
    when $berry_converted1 == $pink && $berry_converted2 == $pink then $pink.combine_2_berries($berry_converted1, $berry_converted2, $white, 2, $red, 1)
    when $berry_converted1 == $indigo && $berry_converted2 == $indigo then $indigo.combine_2_berries($berry_converted1, $berry_converted2, $black, 2, $green, 1)
    when $berry_converted1 == $maroon && $berry_converted2 == $maroon then $maroon.combine_2_berries($berry_converted1, $berry_converted2, $yellow, 2, $tan, 1)
    when $berry_converted1 == $teal && $berry_converted2 == $teal then $teal.combine_2_berries($berry_converted1, $berry_converted2, $white, 2, $pink, 1)
    when $berry_converted1 == $purple && $berry_converted2 == $purple then $purple.combine_2_berries($berry_converted1, $berry_converted2, $black, 2, $indigo, 1)
    when $berry_converted1 == $gold && $berry_converted2 == $gold then $gold.combine_3_berries($berry_converted1, $berry_converted2, $green, 1, $red, 1, $gray, 1)

      # Yellow Start Combinations
    when ($berry_converted1 == $yellow && $berry_converted2 == $white) || ($berry_converted1 == $white && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $black) || ($berry_converted1 == $black && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $green) || ($berry_converted1 == $green && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $red) || ($berry_converted1 == $red && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $gray) || ($berry_converted1 == $gray && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $tan, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $maroon, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $blue, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $orange, 3)
    when ($berry_converted1 == $yellow && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $yellow) then $yellow.combine_berries($berry_converted1, $berry_converted2, $brown, 3)

      # White Start Combinations
    when ($berry_converted1 == $white && $berry_converted2 == $black) || ($berry_converted1 == $black && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $green) || ($berry_converted1 == $green && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $red) || ($berry_converted1 == $red && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $pink, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $gray) || ($berry_converted1 == $gray && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $teal, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $brown, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $orange, 3)
    when ($berry_converted1 == $white && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $white) then $white.combine_berries($berry_converted1, $berry_converted2, $blue, 3)

      # Black Start Combinations
    when ($berry_converted1 == $black && $berry_converted2 == $green) || ($berry_converted1 == $green && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $indigo, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $red) || ($berry_converted1 == $red && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $gray) || ($berry_converted1 == $gray && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $purple, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $brown, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $blue, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $black && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $black) then $black.combine_berries($berry_converted1, $berry_converted2, $orange, 3)

      # Green Start Combinations
    when ($berry_converted1 == $green && $berry_converted2 == $red) || ($berry_converted1 == $red && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $brown, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $gray) || ($berry_converted1 == $gray && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $blue, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $gold, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $orange, 3)
    when ($berry_converted1 == $green && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $green) then $green.combine_berries($berry_converted1, $berry_converted2, $teal, 3)

      # Red Start Combinations
    when ($berry_converted1 == $red && $berry_converted2 == $gray) || ($berry_converted1 == $gray && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $purple, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $gold, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $blue, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $red && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $red) then $red.combine_berries($berry_converted1, $berry_converted2, $purple, 3)

      # Gray Start Combinations
    when ($berry_converted1 == $gray && $berry_converted2 == $tan) || ($berry_converted1 == $tan && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $gold, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $brown, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $gray && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $gray) then $gray.combine_berries($berry_converted1, $berry_converted2, $maroon, 3)

      # Tan Start Combinations
    when ($berry_converted1 == $tan && $berry_converted2 == $pink) || ($berry_converted1 == $pink && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $indigo, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $pink, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $maroon, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $tan && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $tan) then $tan.combine_3_berries($berry_converted1, $berry_converted2, $white, 1, $gray, 1, $blue, 1)
    when ($berry_converted1 == $tan && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $tan) then $tan.combine_3_berries($berry_converted1, $berry_converted2, $black, 1, $gray, 1, $orange, 1)
    when ($berry_converted1 == $tan && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $tan) then $tan.combine_berries($berry_converted1, $berry_converted2, $gold, 3)

      # Pink Start Combinations
    when ($berry_converted1 == $pink && $berry_converted2 == $indigo) || ($berry_converted1 == $indigo && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $tan, 3)
    when ($berry_converted1 == $pink && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $pink && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $teal, 3)
    when ($berry_converted1 == $pink && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $pink && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $pink) then $pink.combine_3_berries($berry_converted1, $berry_converted2, $yellow, 1, $red, 1, $brown, 1)
    when ($berry_converted1 == $pink && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $pink && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $pink) then $pink.combine_3_berries($berry_converted1, $berry_converted2, $black, 1, $red, 1, $orange, 1)
    when ($berry_converted1 == $pink && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $pink) then $pink.combine_berries($berry_converted1, $berry_converted2, $gold, 3)

      # Indigo Start Combinations
    when ($berry_converted1 == $indigo && $berry_converted2 == $brown) || ($berry_converted1 == $brown && $berry_converted2 == $indigo) then $indigo.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $indigo && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $indigo) then $indigo.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $indigo && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $indigo) then $indigo.combine_berries($berry_converted1, $berry_converted2, $purple, 3)
    when ($berry_converted1 == $indigo && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $indigo) then $indigo.combine_3_berries($berry_converted1, $berry_converted2, $yellow, 1, $green, 1, $brown, 1)
    when ($berry_converted1 == $indigo && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $indigo) then $indigo.combine_3_berries($berry_converted1, $berry_converted2, $white, 1, $green, 1, $blue, 1)
    when ($berry_converted1 == $indigo && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $indigo) then $indigo.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $indigo && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $indigo) then $indigo.combine_berries($berry_converted1, $berry_converted2, $gold, 3)

      # Brown Start Combinations
    when ($berry_converted1 == $brown && $berry_converted2 == $blue) || ($berry_converted1 == $blue && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $brown && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $brown && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)
    when ($berry_converted1 == $brown && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $brown && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $brown && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $brown) then $brown.combine_berries($berry_converted1, $berry_converted2, $tan, 3)

      # Blue Start Combinations
    when ($berry_converted1 == $blue && $berry_converted2 == $orange) || ($berry_converted1 == $orange && $berry_converted2 == $blue) then $blue.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $blue && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $blue) then $blue.combine_berries($berry_converted1, $berry_converted2, $green, 3)
    when ($berry_converted1 == $blue && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $blue) then $blue.combine_berries($berry_converted1, $berry_converted2, $white, 3)
    when ($berry_converted1 == $blue && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $blue) then $blue.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $blue && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $blue) then $blue.combine_berries($berry_converted1, $berry_converted2, $indigo, 3)

      # Orange Start Combinations
    when ($berry_converted1 == $orange && $berry_converted2 == $maroon) || ($berry_converted1 == $maroon && $berry_converted2 == $orange) then $orange.combine_berries($berry_converted1, $berry_converted2, $red, 3)
    when ($berry_converted1 == $orange && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $orange) then $orange.combine_berries($berry_converted1, $berry_converted2, $gray, 3)
    when ($berry_converted1 == $orange && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $orange) then $orange.combine_berries($berry_converted1, $berry_converted2, $black, 3)
    when ($berry_converted1 == $orange && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $orange) then $orange.combine_berries($berry_converted1, $berry_converted2, $pink, 3)

      # Maroon Start Combinations
    when ($berry_converted1 == $maroon && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $maroon) then $maroon.combine_3_berries($berry_converted1, $berry_converted2, $white, 1, $green, 1, $yellow, 1)
    when ($berry_converted1 == $maroon && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $maroon) then $maroon.combine_3_berries($berry_converted1, $berry_converted2, $red, 1, $yellow, 1, $black, 1)
    when ($berry_converted1 == $maroon && $berry_converted2 == $teal) || ($berry_converted1 == $teal && $berry_converted2 == $maroon) then $maroon.combine_berries($berry_converted1, $berry_converted2, $yellow, 3)

      # Teal Start Combinations
    when ($berry_converted1 == $teal && $berry_converted2 == $purple) || ($berry_converted1 == $purple && $berry_converted2 == $teal) then $teal.combine_3_berries($berry_converted1, $berry_converted2, $gray, 1, $white, 1, $black, 1)
    when ($berry_converted1 == $teal && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $teal) then $teal.combine_berries($berry_converted1, $berry_converted2, $white, 3)

      # Purple Start Combinations
    when ($berry_converted1 == $purple && $berry_converted2 == $gold) || ($berry_converted1 == $gold && $berry_converted2 == $purple) then $purple.combine_berries($berry_converted1, $berry_converted2, $black, 3)


    else
      puts "No new berries were made."
  end


  ## Break the loop in order to win or lose.
  break if $weather.rain >= 14 || $weather.rain == 0
  break if $yellow.berry_count >= 1 && $green.berry_count >= 1 && $white.berry_count >= 1 && $black.berry_count >= 1 && $red.berry_count >= 1 && $gray.berry_count >= 1 && $tan.berry_count >= 1 && $pink.berry_count >= 1 && $indigo.berry_count >= 1 && $brown.berry_count >= 1 && $blue.berry_count >= 1 && $orange.berry_count >= 1 && $maroon.berry_count >= 1 && $teal.berry_count >= 1 && $purple.berry_count >= 1 && $gold.berry_count >= 1

  puts " "
  puts " "
  puts instructions.loading
  puts " "
  puts " "



end

# Decide if you win or lose

puts " "
puts " "

if $yellow.berry_count >= 1 && $green.berry_count >= 1 && $white.berry_count >= 1 && $black.berry_count >= 1 && $red.berry_count >= 1 && $gray.berry_count >= 1 && $tan.berry_count >= 1 && $pink.berry_count >= 1 && $indigo.berry_count >= 1 && $brown.berry_count >= 1 && $blue.berry_count >= 1 && $orange.berry_count >= 1 && $maroon.berry_count >= 1 && $teal.berry_count >= 1 && $purple.berry_count >= 1 && $gold.berry_count >= 1
  puts instructions.win
elsif $weather.rain >= 14 || $weather.rain == 0
  puts instructions.lose
else
  puts instructions.no_time
end


