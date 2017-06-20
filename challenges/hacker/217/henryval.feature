# language: en

Feature: Solve the challenge number 217
  Called iPod Fun
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given some strange text

  Scenario: Failed attempt
    Given the strange text
    When I use a mirror to look through it
    And I don't find anything useful
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I look closely to the letters
    And I turn the screen upside down
    Then I find the solution
    And I solve the challenge
