# language: en

Feature: Solve the riddle 54
  From bqbi.net brainquest website
  From the associations category
  With my username henryval

  Background:
    Given two words

  Scenario: Successful solution
    When I shrink them
    And I find the solution
    Then I solve the challenge
