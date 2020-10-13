class Player

  attr_reader :name, :points

  # Initialize name and points and give 3 as default value to points to start the game
  def initialize name
    @name = name
    @points = 3
  end

  # Substract 1 point if answer is wrong
  def point_loss
    @points -= 1
  end

end
