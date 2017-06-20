# language: en

Feature: Solve the riddle 49
  From bqbi.net brainquest website
  From the logic category
  With my username henryval

  Background:
    Given a puzzle about counting legs

  Scenario: Successful solution
    When I do the counting
    And I find the solution
    Then I solve the challenge
