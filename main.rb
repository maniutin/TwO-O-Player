require './players'
require './questions'

@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')

def random_number
  rand(1..10)
end

def new_game
  @question1 = Question.new(random_number, random_number)
  @question2 = Question.new(random_number, random_number)
end

def player1_round
  puts "-----NEW TURN-----"

  puts "#{@player1.name}: #{@question1.question}"
  print "> "
  answer = $stdin.gets.chomp.to_i

  if answer == @question1.correct_answer
    puts "#{@player1.name} answered #{answer}"
    puts "Correct!"
    @player1.score += 1
  elsif answer != @question1.correct_answer
    puts "#{@player1.name} answered #{answer}"
    puts "Not correct at all!"
    @player1.health -= 1
  end
  puts "#{@player1.info} vs #{@player2.info}"
end

def player2_round
  puts "-----NEW TURN-----"

  puts "#{@player2.name}: #{@question2.question}"
  print "> "
  answer = $stdin.gets.chomp.to_i

  if answer == @question2.correct_answer
    puts "#{@player2.name} answered #{answer}"
    puts "Correct!"
    @player2.score += 1
  elsif answer != @question2.correct_answer
    puts "#{@player2.name} answered #{answer}"
    puts "Not correct at all!"
    @player2.health -= 1
  end
  puts "#{@player1.info} vs #{@player2.info}"
end

new_game

while @player1.health > 0 || @player2.health > 0

  player1_round

  player2_round

  new_game

    if @player1.health == 0
      puts "#{@player2.name} wins with the score of #{@player2.score}"
      break
    end
    if @player2.health == 0
      puts "#{@player1.name} wins with the score of #{@player1.score}"
      break
    end
end


