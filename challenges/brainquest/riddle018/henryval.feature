# language: en

Feature: Solve the riddle 18
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a puzzle about pulling out socks

  Scenario: Successful solution
    When I analyze it
    And I find the solution
    Then I solve the challenge
