class Player
  def initialize
    @cards = []
  end

  def receive (card)
    @cards << card
  end

  def to_s
    @cards.join(",")
  end
end

