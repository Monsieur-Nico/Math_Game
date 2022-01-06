class Player
  attr_accessor :lives
  attr_reader :id

  def initialize(id)
    @id = id
    @lives = 3
  end
  
  def lost
    self.lives -= 1
  end
end