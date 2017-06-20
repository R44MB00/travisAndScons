# language: en

Feature: Solve the riddle 9
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given some hexadecimal numbers

  Scenario: Successful solution
    When I translate them into ASCII
    Then I see the solution
    And I solve the challenge
