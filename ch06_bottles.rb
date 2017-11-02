bottles = 99

while bottles > 0
  puts "#{bottles} bottles of beer on the wall,"
  puts "#{bottles} bottles of beer,"
  puts "You take 1 down, pass it around,"
  bottles -= 1
  if bottles == 0
    puts "No more bottles of beer on the wall."
  else
    puts "#{bottles} bottles of beer on the wall."
  end
  puts ""
end
