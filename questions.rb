class Question
  attr_accessor :arg1, :arg2

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end

  def question
    "What does #{arg1} plus #{arg2} equal?"
  end

  def correct_answer
    arg1 + arg2
  end

  def correct_answer_display
    "The correct answer is #{correct_answer.to_i}"
  end
end



