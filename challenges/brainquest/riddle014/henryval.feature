# language: en

Feature: Solve the riddle 14
  From bqbi.net brainquest website
  From the orbis pictus category
  With my username henryval

  Background:
    Given a strange picture

  Scenario: Successful solution
    Given the image
    When I look at it I recognize it
    Then I solve the challenge
