class ScissorsPaperStone

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def scissors_paper_stone()
    if  (@hand1 == 'scissors' && @hand2 == 'paper') ||
        (@hand2 == 'scissors' && @hand1 == 'paper')
      return "Scissors cut paper - scissors win!"
    elsif (@hand1 == 'scissors' && @hand2 == 'stone') ||
          (@hand2 == 'scissors' && @hand1 == 'stone')
      return "Stone blunts scissors - stone wins!"
    elsif (@hand1 == 'stone' && @hand2 == 'paper') ||
          (@hand2 == 'stone' && @hand1 == 'paper')
      return "Paper wraps stone - paper wins!"
    elsif @hand1 == @hand2
      return "Hands are the same, try again."
    else
      return "You can only choose scissors, paper or stone, try again"
    end
  end
end
