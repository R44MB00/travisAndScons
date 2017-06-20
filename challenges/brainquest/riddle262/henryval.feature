# language: en

Feature: Solve the riddle 262
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given some months

  Scenario: Successful solution
    When I find out the relation between them
    And I find the solution
    Then I solve the challenge
