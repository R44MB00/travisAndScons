# language: en

Feature: Solve the challenge number 74
  Called Inclusive
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given a challenge with no hints

  Scenario: Successful solution
    When I look into the source code
    And I find a secret script in it
    And I analyze it
    And I find the solution
    Then I solve the challenge
