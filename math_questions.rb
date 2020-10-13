class Math_questions
  attr_reader :solution

# Create 2 numbers at random
  def initialize
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @result = @n1 + @n2
  end


  # Ask the math question to the player
  def ask_question
    puts "What does #{@n1} plus #{@n2} equal?"
  end
  
  # Validate the answer given by the player
  def validate_answer(answer)
    answer == @result
  end
  
end
