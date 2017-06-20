# language: en

Feature: Solve the challenge number 3
  Called Common Comment
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given the hint that the answer is hidden

  Scenario: Successful solution
    When I look into the source code
    And I find the solution
    Then I solve the challenge
