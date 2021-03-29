require './players'
require './questions'

def random_number
  rand(1..10)
end

def new_game
@player1 = Player.new('Player 1')
@player2 = Player.new('Player 2')
@question1 = Question.new(random_number, random_number)
@question2 = Question.new(random_number, random_number)
puts "-----NEW GAME-----"
end

new_game

while @player1.health > 0 || @player2.health > 0
puts "#{@player1.name}: #{@question1.question}"
print "> "
answer = $stdin.gets.chomp.to_i

if answer === @question1.correct_answer
  puts "#{@player1.name} answered #{answer}"
  puts "Correct!"
  @player1.score += 1
  puts @player1.info
else
  puts "#{@player1.name} answered #{answer}"
  puts "Not correct at all!"
  @player1.health -= 1
  puts @player1.info
end

puts "P1: #{@player1.info} vs P2: #{@player2.info}"
puts "-----NEW TURN-----"

puts "#{@player2.name}: #{@question1.question}"
print "> "
answer = $stdin.gets.chomp.to_i

if answer === @question1.correct_answer
  puts "#{@player2.name} answered #{answer}"
  puts "Correct!"
  @player2.score += 1
  puts @player2.info
else
  puts "#{@player2.name} answered #{answer}"
  puts "Not correct at all!"
  @player2.health -= 1
  puts @player2.info
end

puts "P1: #{@player2.info} vs P2: #{@player2.info}"
if @player1.health == 0
  puts "#{@player2.name} wins with the score of #{@player2.score}"
elsif @player2.health == 0
  puts "#{@player1.name} wins with the score of #{@player1.score}"
puts "-----NEW TURN-----"
end
end


