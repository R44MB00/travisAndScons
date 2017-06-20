# language: en

Feature: Solve the challenge 23
  Called Computer Talk
  From the wixxerd website
  From the Cryptography category
  With my username henryval

  Background:
    Given some binary strings
    And the JPK tool

  Scenario: Successful solution
    When I translate them into ASCII
    And I find the solution
    Then I solve the challenge
