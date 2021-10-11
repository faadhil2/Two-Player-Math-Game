require_relative "Player"

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def askQuestion(player)
    randomNum1 = rand(1...20)
    randomNum2 = rand(1...20)
    sum = randomNum1 + randomNum2

    puts "#{player.getName}: What does #{randomNum1} + #{randomNum2} equal?"

    # Ask Player For Console Input
    answer = gets.to_i

    if answer == sum
      puts "#{player.getName}: YES! You are correct!"
    else
      puts "#{player.getName}: Seriously? No!"
      player.loseLife
    end

    # Print The Score
    puts "#{@player1.getName}: #{@player1.getScore}/3 vs #{@player2.getName}: #{@player2.getScore}/3"
    puts "-----NEW TURN ----"

  end

  def gameOver(player)
    if player == 'tie'
      puts "It's a Tie!"
    else
    puts "#{player.getName} wins with a score of #{player.getScore}/3"
    end
    puts "-----GAME OVER -----"
  end


end