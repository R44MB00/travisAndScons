# language: en

Feature: Solve the riddle 40
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a puzzle of a man's son

  Scenario: Successful solution
    When I analyze it
    And I find the solution
    Then I solve the challenge
