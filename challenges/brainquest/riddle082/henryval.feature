# language: en

Feature: Solve the riddle 82
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a math problem

  Scenario: Successful solution
    When I develop a python script to solve it
    And I find the solution
    Then I solve the challenge
