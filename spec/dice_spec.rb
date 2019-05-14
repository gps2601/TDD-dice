require 'dice'

RSpec.describe Dice do
  it "can create a Dice object" do
    my_dice_game = Dice.new(1)
    expect(my_dice_game.class).to eq(Dice)
  end

  it "can respond to roll call" do
    my_dice = Dice.new(1)
    expect(my_dice).to respond_to(:roll)
  end

  it "roll should return a number between 1 and 6" do
    my_dice = Dice.new(1)
    roll_result = my_dice.roll
    expect(roll_result).to be_between(1,6)
  end

  it "should be able to accept an argument in the constructor" do
    my_dice = Dice.new(1)
  end
end
