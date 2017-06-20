# language: en

Feature: Solve the riddle 2
  From bqbi.net brainquest website
  From the mix category
  With my username henryval

  Background:
    Given some numbers

  Scenario: Successful solution
    When I look for them on google
    And I find the relation with a famous television show
    And I find the solution
    Then I solve the challenge
