require 'lib/ship_locator'

Given /^I enter the game$/ do
  visit '/'
end

Then /^I should see small ship at (\d+),(\d+) and medium ship at (\d+),(\d+)$/ do |arg1, arg2, arg3, arg4|
  shipLocator = ShipLocator.new
  shipLocator.existShip?(arg1, arg2).should be_true
  shipLocator.existShip?(arg3,arg4).should be_true
end

Then /^I should not see small ship at (\d+),(\d+) and medium ship at (\d+),(\d+)$/ do |arg1, arg2, arg3, arg4|
  shipLocator = ShipLocator.new
  shipLocator.existShip?(arg1, arg2).should be_false
  shipLocator.existShip?(arg3,arg4).should be_false
end

