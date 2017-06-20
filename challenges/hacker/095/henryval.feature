# language: en

Feature: Solve the challenge number 95
  Called The X Factor
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a very large number

  Scenario: Successful solution
    Given the long number
    When I use the numberempire website
    And its tool numberfactorizer
    And I input the big number
    And I find the solution
    Then I solve the challenge
