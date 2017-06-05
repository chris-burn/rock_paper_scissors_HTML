class RockPaper

  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def check_winner()
    if (@str1 == " ") || (@str2 == " ")
      return "an error! Oh dear!  Please enter rock, paper or scissors."
    end
    if @str1 == @str2
      return  "a draw!"
    end
    if (@str1 == "rock") && (@str2 == "paper")
      return "paper wins!"
    elsif (@str1 == "paper") && (@str2 == "rock")
      return "paper wins!"
    elsif (@str1 == "paper") && (@str2 == "scissors")
      return "scissors wins!"
    elsif (@str1 == "scissors") && (@str2 == "paper")
      return "scissors wins!"
    elsif (@str1 == "rock") && (@str2 == "scissors")
      return "rock wins!"
    elsif (@str1 == "scissors") && (@str2 == "rock")
      return "rock wins!"
    else "an error! Oh dear!  Please enter rock, paper or scissors."
    end
  end

  # def loser()


  # end


end 