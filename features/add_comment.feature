
Feature: Add comments to an article
  As a visitor,
  when I visit the application's landing page and view an article
  I should able to add a comment to the article


  Background:
    Given the following articles exists
      | title                                | content                                                             |author           |
      | Best resources when learning to code | Several online resources like Lynda, Udemy, Coursera and Edx        |Dania            |
      | Is Bigger really better?             | Bigger does't not necessarily mean that it is better                |OJ               |
      | Trump's 100 Days                     | Its been 100 days since Donald trump was sworn into power           |Raoul            |
      | Habits of successful people          | Successful people are consistent, persistent and risk takers        |Dania            |

    When I am on the landing page
    Then I should see "Best resources when learning to code"
    And I should see "Is Bigger really better?"
    And I should see "Trump's 100 Days "
    And I should see "Habits of successful people"
    When I click on "Read Article" link
    Then I should visit the "Habits of successful people" show page
    And I should see on the page "Habits of successful people"
    And I should see on the page "Successful people are consistent, persistent and risk takers"
    And I should see on the page "Written by: Dania at 2017-05-08"
    And I should see a "Comment" form

  Scenario: Add Comment to an article
    And I fill "comment_comment_content" field with "Getting up early is also an habit"
    And I fill "email" field with "oj@dania.com"
    And I click on "Add Comment" button
    Then I should see on the page "Comment successfully added"
    And I should see on the page "Getting up early is also an habit"
    And I should see on the page "Posted by:"

  Scenario: Testing Sad path when wrong email format is entered
    And I fill "comment_comment_content" field with "Getting up early is also an habit"
    And I fill "email" field with "oj@dania"
    And I click on "Add Comment" button
    Then I should see on the page "Ooops!! something is wrong"

  Scenario: Testing Sad path when No content is entered into the comment field
    And I fill "comment_comment_content" field with ""
    And I fill "email" field with "oj@dania"
    And I click on "Add Comment" button
    Then I should see on the page "Ooops!! something is wrong"
