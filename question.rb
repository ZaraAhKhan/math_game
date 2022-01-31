class Question

  attr_accessor :result

  def initialize
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @result = @num_1 + @num_2
  end


  def generate_question
    puts "What does #{@num_1} plus #{@num_2} equal?"
  end

  def compare_answer(answer)
    @result == answer
  end

end

# new_question = Question.new
# puts new_question.generate_question