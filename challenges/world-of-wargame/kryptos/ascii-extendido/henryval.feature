# language: en

Feature: Solve ascii extendido challenge
  From world of wargame website
  From Kryptos category
  With my username henryval

  Background:
    Given the challenge
    And some decimal-based numbers

  Scenario: Successful solution
    Given the numbers
    Then I develop a python script
    Then I input the numbers in
    And I find the ASCII values
    Then I find the solution
    And I solve the challenge
