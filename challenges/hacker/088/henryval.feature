# language: en

Feature: Solve the challenge number 88
  Called Fixation
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a gif
    And the hint do not blink
    And I have access to internet

  Scenario: Successful solution
    When I look for an online tool called ezgif to separate the gif into images
    And I upload the gif
    Then I find the solution in one of those
    And I solve the challenge
