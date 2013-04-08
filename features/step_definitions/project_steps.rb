Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |form_item, input|
  fill_in form_item, :with => input
end

When(/^I press "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  should have_content(text)
end

Then(/^I should see "([^"]*)" within "([^"]*)"$/) do |text,obj|
  within(obj) do
    should have_content(text)
  end
end

Then(/^I should not see "([^"]*)"$/) do |text|
  should_not have_content(text)
end

Then(/^I should be on the project page for "([^"]*)"$/) do |name|
  right_page = current_url == project_url(Project.find_by_name!(name))
  msg = "I am instead on the page: " + current_url + ". "
  assert right_page, msg
end

Given(/^there is a project called "([^"]*)"$/) do |name|
  @project = create(:project, name: name)
end

