# language: en

Feature: Solve the challenge number 57
  Called Go Forth
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given a webpage as the challenge

  Scenario: Failed attempt
    When I click on the link
    Then I can't look at the page
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I look for the source code on another tab
    And I analyze the code
    And I find the solution
    Then I solve the challenge
