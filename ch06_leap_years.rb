puts "Please enter a starting year:"
start_year = gets.chomp.to_i
puts "Please enter an ending year:"
end_year = gets.chomp.to_i
puts ""
puts "Leap years:"

while start_year <= end_year
  if (start_year % 4 == 0 and start_year % 400 == 0) or (start_year % 4 == 0 and start_year % 100 != 0)
    puts start_year
    start_year += 4
  else
    start_year += 1
  end
end
