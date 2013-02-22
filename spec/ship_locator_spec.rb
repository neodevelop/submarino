require 'lib/ship_locator'

describe ShipLocator do
  it "returns true if small ship is in 2,2" do
	@shipLocator = ShipLocator.new
	@shipLocator.existShip?(2,2).should be_true	
  end
  it "returns false if small ship is in 1,1" do
	@shipLocator = ShipLocator.new
	@shipLocator.existShip?(1,1).should be_false
  end
  it "returns true if medium ship is in 3,3" do
	@shipLocator = ShipLocator.new
	@shipLocator.existShip?(3,3).should be_true
  end
  it "returns true if medium ship is in 4,3" do
	@shipLocator = ShipLocator.new
	@shipLocator.existShip?(4,3).should be_true
  end
  it "returns false if medium ship is in 1,4" do
	@shipLocator = ShipLocator.new
	@shipLocator.existShip?(1,4).should be_false
  end
end

