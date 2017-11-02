class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0
    puts
    puts "An orange tree is born."
  end

  def height
    puts "Your tree is #{@height} feet tall."
  end

  def countTheOranges
    puts "There are #{@oranges} oranges on your tree."
    if @age <= 3
      puts "It's just a little baby tree, still. Be patient!"
    end
  end

  def age
    years = (@age > 1) ? "years" : "year"
    puts "Your tree is #{@age} #{years} old now. Boy, do they grow up quick!"
  end

  def pickAnOrange
    puts
    if @oranges > 0
      @oranges -= 1
      puts "You pick a delicious orange. You've never tasted anything so good."
    end
    self.countTheOranges
  end

  def growOranges
    if @age > 3 and @age <= 55
      @oranges = rand(100..300)
    end
  end

  def oneYearPasses
    puts
    puts "The tree grows..."

    @age += 1
    self.age

    if @height <= 20
      @height += 2
    end

    self.growOranges

    if @age > 55 and @age < 155
      @oranges = 0
      puts "The tree is older now. Its days of growing fruit are over."
      puts "It watches the turning of the world."
    elsif @age > 155
      puts
      puts "In time, we too will fade and return to the earth. And so it is that"
      puts "this time has come now for your tree as well. Sleep well, sweet tree."
      puts "We thank you for the joy and nourishment to brought to our lives."
    end
  end

  def cheat
    @age += 20
    @height = 22
    self.growOranges
    puts
    puts "You fall asleep under the tree..."
    puts "You wake up with a white beard long upon your chest."
    puts "For a moment, you forget where you are, who you are."
    puts "You were having the strangest dream..."
    puts "The tree is older now, as are you."
  end

end

def help
  puts
  puts "What would you like to do?"
  puts "0: Observe the passage of time"
  puts "1: Measure your tree"
  puts "2: Find out how old your tree is"
  puts "3: Count the oranges"
  puts "4: Pick an orange"
  puts "5: Cheat (20 year forward jump)"
  puts "?: Help"
  puts "q: Quit"
end

tree = OrangeTree.new
help
input = ""

while input
  input = gets.chomp
  case input
    when "0"
      tree.oneYearPasses
    when "1"
      tree.height
    when "2"
      tree.age
    when "3"
      tree.countTheOranges
    when "4"
      tree.pickAnOrange
    when "5"
      tree.cheat
    when "?"
      help
    when "q"
      puts "Though we may be gone, the tree will live on in our hearts. Goodbye."
      exit!
    else
      help
  end
end
