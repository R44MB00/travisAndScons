# language: en

Feature: Solve the riddle 787
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a math problem

  Scenario: Successful solution
    When I find an equation that solves the problem
    And I find the solution
    Then I solve the challenge
