class Dice
  def initialize(number_of_die)
    if (number_of_die.is_a? Integer) && number_of_die >= 0
      @die = number_of_die
    else
      @die = 1
    end
  end
  def roll
    die_results = []
    die_scores = [1,2,3,4,5,6]
    (1..@die).each do
      die_results.push(die_scores.sample)
    end
    die_results
  end
end
