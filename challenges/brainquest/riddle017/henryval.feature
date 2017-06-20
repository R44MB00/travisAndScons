# language: en

Feature: Solve the riddle 17
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a puzzle

  Scenario: Successful solution
    When I analyze it
    And I find the solution
    Then I solve the challenge
