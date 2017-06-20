# language: en

Feature: Solve the riddle 28
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given three words

  Scenario: Successful solution
    Given the words
    When I guess the fourth one
    And I find the solution
    Then I solve the challenge
