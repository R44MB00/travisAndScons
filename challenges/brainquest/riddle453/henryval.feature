# language: en

Feature: Solve the riddle 453
  From bqbi.net brainquest website
  From the adventures category
  With my username henryval

  Background:
    Given a video

  Scenario: Successful solution
    When I see the solution at the end of the video
    Then I solve the challenge
