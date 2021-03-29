require './players'
require './questions'


question1 = Question.new(5, 5)

puts question1.question
print "> "
answer = $stdin.gets.chomp.to_i

if answer === question1.correct_answer
  puts "You answered #{answer}"
  puts "yaaay!"
else
  puts "You answered #{answer}"
  puts "noooooooo!"
end