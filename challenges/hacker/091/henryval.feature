# language: en

Feature: Solve the challenge number 91
  Called A Piece of Pi
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a sequence to find in pi

  Scenario: Failed attempt
    When I develop a python script to find the sequence
    And I realize it can't go beyond four thousand decimal places
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I find an online tool called angio.net
    And I input the sequence
    Then I find the solution
    And I solve the challenge
