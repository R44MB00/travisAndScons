# language: en

Feature: Solve the riddle 42
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a math puzzle

  Scenario: Successful solution
    When I find the right operando
    And I find the solution
    Then I solve the challenge
