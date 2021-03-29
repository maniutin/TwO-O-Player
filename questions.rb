class Question
  attr_accessor :arg1, :arg2, :answer

  def initialize(arg1, arg2, answer)
    @arg1 = arg1
    @arg2 = arg2
    @answer = answer
  end

  def question
    "What does #{arg1} plus #{arg2} equal?"
  end

  def user_answer
    answer = $stdin.gets.chomp.to_i
  end

  def correct_answer
    arg1 + arg2
  end

  def correct_answer_display
    "The correct answer is #{correct_answer.to_i}"
  end
end

question1 = Question.new(5, 3, 8)


