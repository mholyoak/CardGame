require_relative 'deck'
require_relative 'Player'

class Game

  def initialize (num_players)
    @deck = Deck.new
    @players = Array.new (num_players) {Player.new}
  end

  def deal (count)
    count.times do
      @players.each do |player|
        player.receive (@deck.deal)
      end
    end
  end

  def play
    puts 'playing'
    deal(5)
    @players.count.times do |count|
      puts "Player #{count} #{@players[count]}"
    end
  end
end
