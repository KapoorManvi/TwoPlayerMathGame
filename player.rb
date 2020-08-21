class Player

attr_accessor :lives, :name


  def initialize(name)
    @name = name
    @lives = 3
  end

  def bad_answer
    @lives -= 1
  end

end


