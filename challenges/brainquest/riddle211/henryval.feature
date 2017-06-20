# language: en

Feature: Solve the riddle 211
  From bqbi.net brainquest website
  From the adventures category
  With my username henryval

  Background:
    Given an old story about chinese mythology

  Scenario: Successful solution
    When I read the story
    And I find the guy's name
    Then I solve the challenge
