
#    Create a variable that will hold the weather. Just to make things easier, the weather should be limited to a single word: sunny, cloudy, foggy, rainy, etc.
#    Start your case statement with the keyword case followed by your variable.
#    Next, use the when keyword to check a string that the weather variable could be equal to, followed by a puts line that gives advice about what to wear.
#    Create as many when / puts lines as you need to check for all kinds of weather.
#    Don’t forget to close your case statement with the end keyword.
puts "What is the condition of the weather outside?"
weather = 'sunny'
case weather
when 'sunny'
  puts "Short sleeves and shorts."
when 'cloudy'
  puts "Weat something."
when 'foggy'
  puts "Grab a leafblower to clear some of the fog."
when 'rainy'
  puts "Should carry an umbrella."
else 'windy'
  puts "Windbreaker."
end
