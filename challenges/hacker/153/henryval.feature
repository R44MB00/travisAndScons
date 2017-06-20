# language: en

Feature: Solve the challenge number 153
  Called Valuation
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given some steps
    And a large string

  Scenario: Successful solution
    Given the list of steps
    When I develop a python program following the rules of the list
    Then I find the solution
    And I solve the challenge
