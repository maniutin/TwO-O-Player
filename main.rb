require './players'
require './questions'
require './helpers'

@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')

random_number

new_game

player1_round

player2_round

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


