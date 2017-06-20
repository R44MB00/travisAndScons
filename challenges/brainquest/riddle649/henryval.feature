# language: en

Feature: Solve the riddle 649
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a puzzle about a secret code

  Scenario: Successful solution
    When I develop a python script to find the right number
    And I find the solution
    Then I solve the challenge
