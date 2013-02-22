require 'lib/ship_locator'

Given /^I enter the game$/ do
  visit '/'
end

Then /^I should see small ship at (\d+),(\d+) and medium ship at (\d+),(\d+)$/ do |arg1, arg2, arg3, arg4|
  shipLocator = ShipLocator.new
  shipLocator.existShip?(arg1, arg2).should == true
  shipLocator.existShip?(arg3,arg4).should == true
end
