class Player
  attr_reader :name, :life
  
  def initialize(name)
    @name = name
    @life = 3
  end

  def playerDead?
    @life == 0 ? true : false
  end

  def removeLife
    @life -= 1
  end

  private

  attr_writer :life
end
