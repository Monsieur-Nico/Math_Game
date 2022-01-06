class Question
  attr_accessor :random_num1, :random_num2

  def initialize
    @random_num1 = rand(1..20)
    @random_num2 = rand(1..20)
  end

  def randomize_nums
    self.random_num1 = rand(1..20)
    self.random_num2 = rand(1..20)
  end

  def same_as?(number)
    #=> returns true or false based on the math outcome
    random_num1 + random_num2 == number ? true : false
  end
end