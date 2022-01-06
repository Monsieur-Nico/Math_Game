class Turn
  attr_accessor :counter

  def initialize
    @counter = 0
  end

  def another_round
    self.counter += 1
  end
end