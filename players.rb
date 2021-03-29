class Player
  attr_accessor :name, :score, :health

  def initialize(name)
    @name = name
    @score = 0
    @health = 3
  end

  def info
    "#{name}: Points #{score}/3, HP #{health}/3"
  end
end