class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def cheat(n)
    @numberShowing = (n > 0 && n < 7) ? n : 1
  end

  def showing
    @numberShowing
  end

end

die_01 = Die.new
puts die_01.showing
die_01.cheat(3)
puts die_01.showing
die_01.cheat(7)
puts die_01.showing
die_01.cheat(0)
puts die_01.showing
