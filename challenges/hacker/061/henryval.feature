# language: en

Feature: Solve the challenge number 61
  Called Basic
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a decimal-based number

  Scenario: Successful solution
    Given the large number
    When I look for an online tool for transform it
    And I input the number
    Then I find the solution
    And I solve the challenge
