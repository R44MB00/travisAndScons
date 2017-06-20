# language: en

Feature: Solve the challenge number 25
  Called Never Submit
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given a non-working button
    And the answer

  Scenario: Failed attempt
    When I try to edit the javascript code on the working page
    And I edit the button to work properly
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I analyze how the solution is submited as an URL
    Then I try the right URL
    And I find the solution
    Then I solve the challenge
