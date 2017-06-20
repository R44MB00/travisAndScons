# language: en

Feature: Solve the riddle 35
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given a 64 base encoded string

  Scenario: Successful solution
    When I decode it into ASCII
    And I find the solution
    Then I solve the challenge
