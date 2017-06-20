# language: en

Feature: Solve Get Sourced challenge
  From wechall website
  From Training category
  With my username henryval

  Background:
    Given the challenge
    And its clue

  Scenario: Successful solution
    When I see the source code of the challenge's website
    And I find the solution
    Then I solve the challenge

