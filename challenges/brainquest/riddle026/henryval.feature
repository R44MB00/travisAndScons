# language: en

Feature: Solve the riddle 26
  From bqbi.net brainquest website
  From the stegano category
  With my username henryval

  Background:
    Given a picture of a house
    And the Stegsolve tool

  Scenario: Successful solution
    When I pass the picture through the Stegsolve filter
    And I see the solution hidden in there
    Then I solve the challenge
