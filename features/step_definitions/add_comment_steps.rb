When(/^I click on "([^"]*)" link$/) do |link|
  first(:link, link).click
end

Then(/^I should visit the "([^"]*)" show page$/) do |article_title|
  article = Article.where(title: article_title).first
  visit article_path(article)
end

Then(/^I should see the "([^"]*)" as title$/) do |title|
  expect(page).to have_content title
end

Then(/^I should see the "([^"]*)" as content$/) do |arg1|
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
