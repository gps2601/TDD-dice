require 'dice'

RSpec.describe Dice do
  it "can create a Dice object" do
    my_dice_game = Dice.new
    expect(my_dice_game.class).to eq(Dice)
  end
end
