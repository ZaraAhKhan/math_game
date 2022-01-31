require './player'
require './question'

class Game 

  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @current_player = @p1
  end

  # sets the current player
  def set_current_player
    @current_player == @p1?
    @current_player = @p2 :
    @current_player = @p1
  end

  def start
  #game loop
    while @current_player.lives > 0
  
   
    #ask the question
      question = Question.new
      puts "#{@current_player.name} : #{question.generate_question}"

      answer = gets.chomp.to_i

    #check the answer
      if question.compare_answer(answer)
        puts "Yes! you are correct"
      else
        puts "Seriously? No!"
        @current_player.reduce_lives
      end

    #check if lives > 0
      if @current_player.lives > 0
        puts "P1:#{@p1.lives}/3 vs P2:#{@p2.lives}/3 "
        puts "---- NEW TURN ----"
        self.set_current_player
      else
        winner = @current_player == @p1? @p2 : @p1
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
      end
    end
  end
end