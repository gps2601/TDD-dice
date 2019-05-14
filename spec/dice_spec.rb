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
    expect(roll_result[0]).to be_between(1,6)
  end

  it "should be able to accept an argument in the constructor" do
    my_dice = Dice.new(1)
  end

  it "should return 1 from instance variable called die" do
    my_dice = Dice.new(1)
    number_of_die = my_dice.instance_variable_get(:@die)
    expect(number_of_die).to eq(1)
  end

  it "should return 2 from instance variable called die" do
    my_dice = Dice.new(2)
    number_of_die = my_dice.instance_variable_get(:@die)
    expect(number_of_die).to eq(2)
  end

  it "should default to 1 die if a non number is passed" do
    my_dice = Dice.new("hdqdsakjsdh")
    number_of_die = my_dice.instance_variable_get(:@die)
    expect(number_of_die).to eq(1)
  end

  it "should default to 1 die if a negative number is passed" do
    my_dice = Dice.new(-1)
    number_of_die = my_dice.instance_variable_get(:@die)
    expect(number_of_die).to eq(1)
  end

  it "should return an array of die rolls" do
    my_dice = Dice.new(1)
    roll_result = my_dice.roll
    expect(roll_result.class).to eq(Array)
  end
end
