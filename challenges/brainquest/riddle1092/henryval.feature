# language: en

Feature: Solve the riddle 1092
  From bqbi.net brainquest website
  From the orbis pictus category
  With my username henryval

  Background:
    Given a picture with a pretty famous park

  Scenario: Successful solution
    Given the image
    When I look it
    Then I realize the solution
    And I solve the challenge
