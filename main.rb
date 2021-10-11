require_relative 'Player'
require_relative 'Game'


class Main 
  player1 = Player.new('P1')
  player2 = Player.new('P2')
  
  game1 = Game.new(player1,player2)

  # Run The Game While Both Players Still Have Lives
  while player1.getScore != 0 && player2.getScore !=0
  game1.askQuestion(player1)
  game1.askQuestion(player2)  
  end

  #Game Over Results
  if player1.getScore == 0 && player2.getScore ==0
    game1.gameOver('tie')
  elsif player1.getScore == 0
    game1.gameOver(player2)
  else
    game1.gameOver(player1)
  end

end

