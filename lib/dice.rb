class Dice
  def initialize(number_of_die)
    if (number_of_die.is_a? Integer) && number_of_die >= 0
      @die = number_of_die
    else
      @die = 1
    end
  end
  def roll
    [1]
  end
end
