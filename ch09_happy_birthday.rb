birthday = String.new
pattern = /\d{4}\/\d{2}\/\d{2}/

while not (pattern === birthday)
  puts "What's your birthday? (yyyy/mm/dd)"
  birthday = gets.chomp
end

birthday = birthday.split('/')

birthtime = Time.mktime(birthday[0], birthday[1], birthday[2])
age = (Time.new - birthtime) / (365 * 24 * 60 * 60)
age = age.floor

age.times do
  puts "SPANK!"
end
