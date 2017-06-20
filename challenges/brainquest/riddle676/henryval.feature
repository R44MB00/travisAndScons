# language: en

Feature: Solve the riddle 676
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a very hard math problem

  Scenario: Successful solution
    When I develop a python script following the rules
    And I find the solution
    Then I solve the challenge
