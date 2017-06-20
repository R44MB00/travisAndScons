# language: en

Feature: Solve the challenge number 11
  Called Invisible Ink
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given the challenge
    And the hint about the answer below the line

  Scenario: Successful solution
    When I look into the webpage's source code
    And I find the solution
    Then I solve the challenge
