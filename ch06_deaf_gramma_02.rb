input = ""
bye_count = 0

while bye_count < 3
  input = gets.chomp
  if input == "BYE"
    bye_count += 1
  else
    bye_count = 0
    upcase_input = input.upcase
    if input != upcase_input
      puts "HUH?! SPEAK UP, SONNY!"
    elsif input != "BYE"
      puts "NO, NOT SINCE #{rand(1930..1950)}!"
    end
  end
end
