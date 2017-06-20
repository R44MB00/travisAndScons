# language: en

Feature: Solve the challenge number 26
  Called Follow the logic
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a challenge about guess a number

  Scenario: Successful solution
    When I look into the source code of the challenge's page
    Then I discover a shor javascript code
    And I execute on a javascript online website
    And I find the solution
    Then I solve the challenge
