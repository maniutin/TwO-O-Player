class Player
  attr_accessor :name, :score, :health

  def initialize(name, score, health)
    @name = name
    @score = score
    @health = health
  end

  def info
    "#{name}: #{score} points #{health} HP"
  end
end

player1 = Player.new('player1', '0/3', '3/3')