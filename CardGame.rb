require_relative "Game"

=begin
test = Array.new

test.push(Card.new(:spade, "2"))
test.push(Card.new(:heart, "3"))
puts test[0].to_s
puts test.inspect
puts test[0].face_type
puts test[0].suite.to_s

player = Player.new
player.receive(test[0])
player.receive(test[1])
puts player.to_s
=end

game = Game.new(5)
game.play
#puts game.inspect

