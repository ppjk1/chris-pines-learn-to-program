input = ""

while input != "BYE"
  input = gets.chomp
  upcase_input = input.upcase
  if input != upcase_input
    puts "HUH?! SPEAK UP, SONNY!"
  elsif input != "BYE"
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
end
