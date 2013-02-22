Given /^I open the web app$/ do
  visit '/'
end

When /^I click on "(.*)"$/ do |text|
  click_link(text)
end

Then /^I should see "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

When /^I fill "(.*)" with "(.*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*)"$/ do |name|
  click_button(name)
end

Given /^I start the web app$/ do
  visit '/'
end

Then /^I should not see "(.*?)"$/ do |text|
  last_response.body.should_not =~ /#{text}/m
end

Then /^I should see a Button with name "(.*?)"$/ do |name|
  click_button(name)
end

Then /^I should see a Button with name <resultado>$/ do
  click_button(name)
end

Then /^I should see a Button with name "(.*?)" with value="(.*?)"$/ do |name, value|
  #click_button(name)
	ButtonLocator.locate(name)
#	button.value.should == "B"
end



