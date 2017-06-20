#language: en

Feature: Solve ASCII challenge
  From site wechall
  From Training and Encoding category
  With my username henryval

  Background:
    Given a group of decimal-based numbers
    And a clue about ASCII coding

  Scenario: Successful solution
    Given the numbers
    When I develop a python script
    And I entry the numbers
    And I find the solution
    And I verify using ASCII chart
    Then I solve the challenge
