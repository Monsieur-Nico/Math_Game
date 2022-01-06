# Import all necessary classes
require "./player"
require "./question"
require "./turn"

# Creating instances from classes
player_1 = Player.new(1)
player_2 = Player.new(2)
question = Question.new
turn = Turn.new

# Check if the players still have lives
def alive?(player_1, player_2)
  player_1.lives > 0 && player_2.lives > 0 ? true : false
end

# Only keep the game going while one of the players is alive
while alive?(player_1, player_2)
  if turn.counter.even?
    puts "Player 1: What does #{question.random_num1} plus #{question.random_num2} equals?"
    print "> "
    answer = gets.chomp.to_i
    if question.same_as?(answer)
      puts "Player 1: YES! You are correct."
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
    else
      puts "Player 1: Seriously? No!"
      player_1.lost
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
    end
    turn.another_round
    question.randomize_nums
    if alive?(player_1, player_2)
    puts "---- NEW TURN ----"
    end
  else

    puts "Player 2: What does #{question.random_num1} plus #{question.random_num2} equals?"
    print "> "
    answer = gets.chomp.to_i
    if question.same_as?(answer)
      puts "Player 2: YES! You are correct."
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
    else
      puts "Player 2: Seriously? No!"
      player_2.lost
      puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
    end
    turn.another_round
    question.randomize_nums
    if alive?(player_1, player_2)
      puts "---- NEW TURN ----"
    end
  end
end

if player_1.lives > 0
  puts "Player 1 wins with a score of #{player_1.lives}/3"
  puts "---- GAME OVER ----"
  puts "Good bye!"
else
  puts "Player 2 wins with a score of #{player_2.lives}/3"
  puts "---- GAME OVER ----"
  puts "Good bye!"
end