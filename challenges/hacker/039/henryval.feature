# language: en

Feature: Solve the challenge number 39
  Called BCD
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given some binary numbers
    And the JPK tool

  Scenario: Successful solution
    When I input the numbers into the JPK filling with zeroes
    And I transform them into decimal
    And I find the solution
    Then I solve the challenge
