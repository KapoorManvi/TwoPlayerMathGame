require './player.rb'
require './question.rb'

class Game

  # Sets players
  def initialize
    @players = [Player.new('Player 1'), Player.new('Player 2')]
    
    @current_player = 0
  end

  # Changes players for changing turns
  def change_player 
    if @current_player == 0
      @current_player = 1
    elsif @current_player == 1
      @current_player = 0
    end
  end

  # Presents questions in alternating fashion to each player and keeps track of score
  def run

    while @players[0].lives > 0 && @players[1].lives > 0
      puts "Player 1: #{@players[0].lives}/3 vs Player 2: #{@players[1].lives}/3"
      
      question = Question.new(@players[@current_player].name)
      response = question.get_answer
      if response == false
        @players[@current_player].bad_answer
      end 
      change_player
    end
    puts "#{@players[@current_player].name} you lost."

  end

  

end

game = Game.new

game.run



