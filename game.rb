require "./math_questions"
require "./player"


class Game

  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @current_player = @player1
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  # Start the game
  def play
    puts "Let's start!"
    # Run the game until the player reaches 0
    while @current_player.points > 0 do
      puts "\n------ NEW TURN ------"
      puts "#{@current_player.name},"
      @question = Math_questions.new
      @question.ask_question
     
      #Validate answer from question
      if @question.validate_answer(gets.chomp.to_i)
        puts "YES! You are correct."
      else
        puts "Seriously? no!"
        @current_player.point_loss
      end
      
      #If the player as some point left switch player for next question
      if @current_player.points > 0
        puts "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3"
        switch_player
      #If the player as no remaining points, finish the game
      else 
        puts "#{@current_player.name} lost!"
        puts "\n------ GAME OVER ------"
        puts "Good bye!"
      end

    end
  end
end