# language: en

Feature: Solve the challenge number 190
  Called My Digits
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given an old audio file
    And I have Audacity installed

  Scenario: Failed attempt
    When I download the file
    And play it on Audacity
    And I count the beeps
    And I find a coherent answer
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I try a different solution based on the previous
    Then I solve the challenge
