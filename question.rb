class Question

  attr_accessor :right_answer

  def initialize(player_turn)
    @number_1 = rand(20)
    @number_2 = rand(20)
    @answer = @number_1 + @number_2

    puts "#{player_turn}: What does #{@number_1} plus #{@number_2} equal?"

  end

  def get_answer

    @player_response = gets.chomp

    if @player_response == @answer.to_s
      puts "YES! You are correct."
      return true
    else
      puts "Seriously? No."
      return false
    end
  end
end
