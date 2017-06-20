# language: en

Feature: Solve the riddle 44
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given three numbers

  Scenario: Successful solution
    Given the numbers
    When I guess the next one
    And I find the solution
    Then I solve the challenge
