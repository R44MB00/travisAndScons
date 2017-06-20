# language: en

Feature: Solve the riddle 104
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a math puzzle

  Scenario: Successful solution
    When I do the math
    And I find the solution
    Then I solve the challenge
