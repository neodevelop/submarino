#When /^I press Button "(.*?)"$/ do |name|
#  click_button(name)
#end

When /^I press Button in coordinates (\d+) (\d+)$/ do |x, y|
  click_button("o"+x.to_s+y.to_s)
end

