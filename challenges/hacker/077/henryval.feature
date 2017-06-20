# language: en

Feature: Solve the challenge number 77
  Called Type Faster
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a countdown clock
    And a large string

  Scenario: Successful solution
    Given enough time
    When I double click into the large string
    Then it allows me to select all of it
    And I quickly copy and paste the solution
    Then I solve the challenge
