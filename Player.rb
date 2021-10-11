class Player

  def initialize(name)
    @name = name
    @score = 3
  end

  def getName
    @name
  end

  def getScore
    @score
  end

  def loseLife
    @score = @score -1
  end

end

 