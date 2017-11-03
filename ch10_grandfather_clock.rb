def clock &block
  hours = Time.now.hour % 12 # get hours and convert to 12-hour format
  hours = 12 if hours == 0 # handle midnight
  hours.times do
    block.call
  end
end

clock do
  puts "DONG!"
end
