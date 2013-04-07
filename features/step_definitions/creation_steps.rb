Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |form_item, input|
  fill_in form_item, :with => input
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |text|
  has_text? text
end
