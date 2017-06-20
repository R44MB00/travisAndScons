# language: en

Feature: Solve Caesar 1 challenge
  From wechall website
  From Training and Crypto category
  With my username henryval

  Background:
    Given a characters string incoherent
    And the clue of a caesar cipher

  Scenario: Successful solution
    When I develop a python script
    And I input the string
    Then I find the solution
    And I solve the challenge
