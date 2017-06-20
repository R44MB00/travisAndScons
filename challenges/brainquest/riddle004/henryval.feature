# language: en

Feature: Solve the riddle 4
  From bqbi.net brainquest website
  From the crypto category
  With my username henryval

  Background:
    Given a backwards string

  Scenario: Successful solution
    When I use a python script
    And I find the solution
    Then I solve the challenge
