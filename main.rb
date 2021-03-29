require './players'
require './questions'

question1 = Question.new(3, 5, 8)
puts question1.question
print "> "
if question1.answer === question1.correct_answer
  puts "You answered #{$stdin.gets.chomp.to_i}"
  puts "yaaay!"
else
  puts "noooooooo!"
end