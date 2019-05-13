require 'dice'

RSpec.describe Dice do
  it "can create a Dice object" do
    my_dice_game = Dice.new
    expect(my_dice_game.class).to eq(Dice)
  end

  it "can respond to roll call" do
    my_dice = Dice.new
    expect(my_dice).to respond_to(:roll)
  end

  # RSpec one line syntax
  it {is_expected.to respond_to(:roll)}

  it "roll should return a number between 1 and 6" do
    my_dice = Dice.new
    roll_result = my_dice.roll
    expect(roll_result).to be_between(1,6)
  end

  it "asks user how many dice they want to roll" do
    expect(STDOUT).to receive(:puts).with('How many die?')
    my_dice_game = Dice.new
  end
end
