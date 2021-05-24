class Question 
  def question
    randomNumber1 = rand(1...20)
    randomNumber2 = rand(1...20)
    puts "What does #{randomNumber1} plus #{randomNumber2} equal?"
    print "> "
    answer = gets.chomp
  end
end

h1 = Question.new
h1.question