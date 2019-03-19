class Game
  
  def self.run(p1, p2)
    case
      when p1 == 'paper' && p2 == 'rock'
        return "Player 1 wins!"
      when p1 == 'rock' && p2 == 'paper'
        return "Player 2 wins!"
      when p1 == 'scissors' && p2 == 'rock'
        return  "Player 2 wins!"
      when p1 == 'rock' && p2 == 'scissors'
        return "Player 1 wins!"
      when p1 == 'scissors' && p2 == 'paper'
        return "Player 1 wins!"
      when p1 == 'paper' && p2 == 'scissors'
        return "Player 2 wins!"
      else return "Draw!"
    end
  end
end
