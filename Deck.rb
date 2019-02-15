require_relative "Card"

class Deck

  def initialize
    @cards = Array.new

    shuffle
  end

  def shuffle
    Card.suite_types.each do |suite|
      Card.card_types.each do |type|
        card = (Card.new(suite, type))
        @cards.push(card)
      end
    end
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

end
