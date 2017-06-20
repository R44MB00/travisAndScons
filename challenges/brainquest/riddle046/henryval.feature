# language: en

Feature: Solve the riddle 46
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a funny puzzle

  Scenario: Successful solution
    When I find out about the secret letter
    And I find the solution
    Then I solve the challenge
