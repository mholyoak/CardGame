class Card

  @@face_types = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  @@suite_types = [:spad, :heart, :club, :diamond]
  @@color_types = [:black, :red]

  def initialize(card_suite, card_face_type)
    @face_type = card_face_type
    @suite = card_suite
  end

  # class methods
  def self.suite_types
    @@suite_types
  end

  def self.card_types
    @@face_types
  end

  # instance methods
  attr_reader :face_type
  attr_reader :suite

  def color
    color = :black

    if (self.suite == :heart || self.suite == :diamond)
      color = :red
    end

    color
  end

  def to_s
    @suite.to_s + " " + color.to_s + " " + @face_type
  end

end
