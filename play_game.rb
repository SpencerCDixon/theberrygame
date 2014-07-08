require './berry_class.rb'
require './scoreboard.rb'
require './weather.rb'
require './time_management.rb'
require './instructions.rb'


# Initializing Berry Objects
red = RedBerry.new(berry_color: "red", berry_count: 7)
blue = RedBerry.new(berry_color: "blue", berry_count: 7)
purple = RedBerry.new(berry_color: "purple", berry_count: 0)
pink = RedBerry.new(berry_color: "pink", berry_count: 0)

# Initializing weather, months, time management, and scoreboard.
$round = Turn.new(turn_count: ["1",5,4,3,2,1,1])
$weather = Weather.new(rain: 7, snow: 0)
scoreboard = Scoreboard.new(red: red, blue: blue, purple: purple)
instructions = TextInstructions.new(name: "instructions")

# Months
startgame = Month.new(month_name: "start", rain_chance: 0, snow_chance: 0, drought_chance: 0) #Needed in order to set up months properly
january = Month.new(month_name: "january", rain_chance: 25, snow_chance: 75, drought_chance: 0)
february = Month.new(month_name: "february", rain_chance: 38, snow_chance: 50, drought_chance: 0)
march = Month.new(month_name: "march", rain_chance: 50, snow_chance: 13, drought_chance: 0)
april = Month.new(month_name: "april", rain_chance: 63, snow_chance: 0, drought_chance: 0)
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




loop do

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
  print $weather.rain_level
  print $weather.snow_level
  puts " "
  puts scoreboard.show_score

  # All possible berries to check to make sure player selects one.
  berry_array = ["red", "blue", "purple", "pink"]
  # Get the first berry input from the player.

  puts "Which two berries would you like to combine?"
  print "First Berry: "
  berry_input1 = gets.chomp.downcase

  unless berry_array.include?(berry_input1) == true
    puts "Please select a real berry. Look at scoreboard to see options.".red
    print "First Berry: "
    berry_input1 = gets.chomp.downcase
  end

  # Convert the input back to the berry class to do a quick berry check
  if berry_input1 === "red" then berry_converted1 = red end
  if berry_input1 === "blue" then berry_converted1 = blue end
  if berry_input1 === "purple" then berry_converted1 = purple end
  if berry_input1 === "green" then berry_converted1 = green end
  if berry_input1 === "white" then berry_converted1 = white end
  if berry_input1 === "black" then berry_converted1 = black end
  if berry_input1 === "yellow" then berry_converted1 = yellow end
  if berry_input1 === "gray" then berry_converted1 = gray end
  if berry_input1 === "tan" then berry_converted1 = tan end
  if berry_input1 === "teal" then berry_converted1 = teal end
  if berry_input1 === "indigo" then berry_converted1 = indigo end
  if berry_input1 === "brown" then berry_converted1 = brown end
  if berry_input1 === "orange" then berry_converted1 = orange end
  if berry_input1 === "maroon" then berry_converted1 = maroon end
  if berry_input1 === "gold" then berry_converted1 = gold end
  if berry_input1 === "pink" then berry_converted1 = pink end

  # Check to make sure player has sufficient berries
  berry_converted1.berry_count_check(berry_input1, "First Berry: ")



  # Get second berry input from player.
  print "Second Berry: "
  berry_input2 = gets.chomp.downcase

  unless berry_array.include?(berry_input2) == true
    puts "Please select a real berry. Look at scoreboard to see options.".red
    print "Second Berry: "
    berry_input2 = gets.chomp.downcase
  end

  # Convert the input back to the berry class to do a quick berry check
  if berry_input2 === "red" then berry_converted2 = red end
  if berry_input2 === "blue" then berry_converted2 = blue end
  if berry_input2 === "purple" then berry_converted2 = purple end
  if berry_input2 === "green" then berry_converted2 = green end
  if berry_input2 === "white" then berry_converted2 = white end
  if berry_input2 === "black" then berry_converted2 = black end
  if berry_input2 === "yellow" then berry_converted2 = yellow end
  if berry_input2 === "gray" then berry_converted2 = gray end
  if berry_input2 === "tan" then berry_converted2 = tan end
  if berry_input2 === "teal" then berry_converted2 = teal end
  if berry_input2 === "indigo" then berry_converted2 = indigo end
  if berry_input2 === "brown" then berry_converted2 = brown end
  if berry_input2 === "orange" then berry_converted2 = orange end
  if berry_input2 === "maroon" then berry_converted2 = maroon end
  if berry_input2 === "gold" then berry_converted2 = gold end
  if berry_input2 === "pink" then berry_converted2 = pink end

  # Check to make sure player has sufficient berries
  berry_converted1.berry_count_check(berry_input2, "Second Berry: ")



  case
    when (berry_converted1 == red && berry_converted2 == blue) || (berry_converted1 == blue && berry_converted2 == red) then red.combine_berries(berry_converted1, berry_converted2, purple, 3)
    when berry_converted1 == purple && berry_converted2 == red then red.combine_berries(berry_converted1, berry_converted2, pink, 3)

    else
      puts "Not sufficient berries."
  end

    sleep (1.0/5.0)
    puts " "
    instructions.loading
    puts " "
    puts " "



end


