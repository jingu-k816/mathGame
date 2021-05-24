class Question 
  attr_accessor :answer, :question
  def initialize
    randomNumber1 = rand(1...20)
    randomNumber2 = rand(1...20)
    @question = "What does #{randomNumber1} plus #{randomNumber2} equal?"
    @answer = randomNumber1 + randomNumber2
  end

end
