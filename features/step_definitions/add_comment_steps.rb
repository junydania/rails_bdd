When(/^I click on "([^"]*)" link$/) do |link|
  first(:link, link).click
end

Then(/^I should visit the "([^"]*)" show page$/) do |article|
  visit article_path(article)
end

Then(/^I should see the "([^"]*)" content$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a "([^"]*)" form$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I fill "([^"]*)" into the comment form"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I click on "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the added comment on the article show page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
