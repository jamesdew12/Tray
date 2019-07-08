require_relative '../robot_cleaner.rb'

describe RobotCleaner do

  it "checks the x position is an integer and is correct" do
    expect(subject.x_position.is_a? Integer).to eq true
    expect(subject.x_position).to eq 1
  end

  it "checks final position is correct" do
    subject.turn_on
    expect(subject.locations.last).to eq "2 3"
  end

  it "checks the y position is an integer and is correct" do
    expect(subject.y_position.is_a? Integer).to eq true
    expect(subject.y_position).to eq 2
  end

  it "checking location of dirt array is empty " do
    expect(subject.location_of_dirt).to eq []
  end

  it "checking locations array starts off being empty array " do
    expect(subject.locations).to eq []
  end

  it "checking it returns all the points robot cleaner landed on " do
    expect(subject.turn_on).to eq ["1 3", "1 4", "2 4", "2 3", "3 3", "4 3", "4 2", "3 2", "3 3", "2 3", "2 3"]
  end

  it "saves all the correct locations into locations " do
    subject.turn_on
    expect(subject.locations).to eq ["1 3", "1 4", "2 4", "2 3", "3 3", "4 3", "4 2", "3 2", "3 3", "2 3", "2 3"]
  end

  it "gives us the properly format locations of dirt with \n breaks" do
    subject.format_and_get_dirt_locations
    expect(subject.location_of_dirt).to eq ["1 0", "2 2", "3 3", "2 3", "0 1", "0 3", "4 3"]
  end

  it "returns to user in correct format i.e cleaned x patches of dirt" do
    subject.turn_on
    expect(subject.find_and_return_results).to eq ["The robot finished at these coordinates 2 3", "The robot cleaned 0 patches of dirt"]
  end

end
