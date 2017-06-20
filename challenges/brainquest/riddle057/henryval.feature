# language: en

Feature: Solve the riddle 57
  From bqbi.net brainquest website
  From the associations category
  With my username henryval

  Background:
    Given two colours

  Scenario: Successful solution
    When I combine them
    And I find the solution
    Then I solve the challenge
