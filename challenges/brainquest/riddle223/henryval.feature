# language: en

Feature: Solve the riddle 223
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given an upside down string

  Scenario: Successful solution
    When I put my monitor upside down
    Then I see the solution
    And I solve the challenge
