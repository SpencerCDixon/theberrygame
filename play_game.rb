require './berry_class.rb'
require './scoreboard.rb'
require './weather.rb'
require './time_management.rb'


# Initializing Berry Objects
red = RedBerry.new(berry_color: "red", berry_count: 7)
blue = RedBerry.new(berry_color: "blue", berry_count: 7)
purple = RedBerry.new(berry_color: "purple", berry_count: 0)

# Initializing weather, months, time management, and scoreboard.
$round = Turn.new(turn_count: [5,4,3,2,1,1])
$weather = Weather.new(rain: 7, snow: 0)
scoreboard = Scoreboard.new(red: red, blue: blue, purple: purple)

# Months
startgame = Month.new(month_name: "start", rain_chance: 25, snow_chance: 75, drought_chance: 0) #Needed in order to set up months properly
january = Month.new(month_name: "january", rain_chance: 25, snow_chance: 75, drought_chance: 0)
february = Month.new(month_name: "february", rain_chance: 38, snow_chance: 50, drought_chance: 0)
march = Month.new(month_name: "march", rain_chance: 50, snow_chance: 13, drought_chance: 0)
april = Month.new(month_name: "april", rain_chance: 63, snow_chance: 0, drought_chance: 0)
may = Month.new(month_name: "may", rain_chance: 75, snow_chance: 0, drought_chance: 0)
june = Month.new(month_name: "june", rain_chance: 50, snow_chance: 25, drought_chance: 0)
july = Month.new(month_name: "july", rain_chance: 25, snow_chance: 38, drought_chance: 0)
august = Month.new(month_name: "august", rain_chance: 0, snow_chance: 0, drought_chance: 50)
september = Month.new(month_name: "september", rain_chance: 13, snow_chance: 0, drought_chance: 13)
october = Month.new(month_name: "october", rain_chance: 50, snow_chance: 25, drought_chance: 0)
november = Month.new(month_name: "november", rain_chance: 25, snow_chance: 38, drought_chance: 0)
december = Month.new(month_name: "december", rain_chance: 13, snow_chance: 63, drought_chance: 0)


# Month Rotation
$months = MonthCycle.new(month_count: [december,november,october,september,august,july,june,may,april,march,february,january,startgame])
month_tracker = [1, 1, 1, 1, 1]




loop do

# Cycles through the $months array after the appropriate number of turns
month_tracker = month_tracker.push(1)
  if month_tracker == [1, 1, 1, 1, 1, 1]
     $months.next_month
     month_tracker = [1]
     $months.current_month.raining?
  end






  # Rain check


  # Time Keeper
  $round.month_check
  $round.next_round








  print $weather.rain_level
  print $weather.snow_level
  puts scoreboard.show_score

  puts "Which Berries would you like to combine?"
  print "First Berry: "
  berry_input1 = gets.chomp.downcase
  print "Second Berry: "
  berry_input2 = gets.chomp.downcase

  # Berry converter: From string back to berry object.

  if berry_input1 === "red" then berry_output1 = red end
  if berry_input1 === "blue" then berry_output1 = blue end

  if berry_input2 === "blue" then berry_output2 = blue end
  if berry_input2 === "red" then berry_output2 = red end





  case
    when berry_output1 == red && berry_output2 == blue then red.combine_berries(berry_output1, berry_output2, purple)

    else
      puts "Not sufficient berries."
  end

    puts purple.berry_count.to_s.green << " New Purple Berries!".green
    sleep 1




end


