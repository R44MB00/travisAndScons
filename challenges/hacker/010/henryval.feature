# language: en

Feature: Solve the challenge number 10
  Called Visible Ink
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given the challenge

  Scenario: Successful solution
    When I look into the source code
    And I find the solution
    Then I solve the challenge
