require "./player.rb"
require "./question.rb"

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    accumulator = 0
    while @player1.life > 0 && @player2.life > 0 do
      question = Question.new
      puts "Player #{accumulator % 2 + 1}: #{question.question}"
      print "> "
      answer = gets.chomp.to_i

      if question.answer == answer
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        if accumulator % 2 == 1
          @player2.removeLife
        else
          @player1.removeLife
        end
      end
      puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
      puts "----New Turn----"
      accumulator += 1
    end
    gameover(@player1, @player2, accumulator)
  end

  def gameover(first, second, counter)
    if first.playerDead? || second.playerDead?
      if counter % 2 == 1
        puts "Player 2 wins with a score of #{second.life}/3"
      else
        puts "Player 1 wins with a score of #{first.life}/3"
      end
      puts "----GAME OVER----"
    end
  end

end

