When(/^I click on "([^"]*)" link$/) do |link|
  first(:link, link).click
end

Then(/^I should visit the "([^"]*)" show page$/) do |article_title|
  article = Article.where(title: article_title).first
  visit article_path(article)
end


Then(/^I should see on the page "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see on the "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I should see a "([^"]*)" form$/) do |content|
  expect(page).to have_selector ('div.comment_area')
end

Then(/^I fill "([^"]*)" field with "([^"]*)"$/) do |field, content|
    fill_in(field, with: content)
end

Then(/^I click on "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I should see the added "([^"]*)" as content$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
