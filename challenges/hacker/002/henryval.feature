# language: en

Feature: Solve the challenge number 2
  Called XOR Eval
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a XOR operation
    And I have access to internet

  Scenario: Successful solution
    Given the numbers
    When I put them on an online XOR calculator
    Then I find the solution
    And I solve the challenge
