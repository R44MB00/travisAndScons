# language: en

Feature: Solve the riddle 342
  From bqbi.net brainquest website
  From the mix category
  With my username henryval

  Background:
    Given a hint about darkness

  Scenario: Successful solution
    When I put my mouse selecting over
    And I find the solution
    Then I solve the challenge
