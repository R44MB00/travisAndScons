# language: en

Feature: Solve the riddle 34
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given a number-coded word

  Scenario: Successful solution
    When I read the numbers as letters
    Then I find the solution
    And I solve the challenge
