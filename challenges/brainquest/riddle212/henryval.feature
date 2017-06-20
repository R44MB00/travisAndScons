# language: en

Feature: Solve the riddle 212
  From bqbi.net brainquest website
  From the adventures category
  With my username henryval

  Background:
    Given a flash game

  Scenario: Successful solution
    When I play it long enough
    Then I'm able to get the right path
    And I solve the challenge
