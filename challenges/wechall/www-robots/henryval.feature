# language: en

Feature: Solve WWW-Robots challenge
  From wechall website
  From HTTP and Training category
  With my username henryval

  Background:
    Given a challenge with no input
    And a clue about the robots exclusion standard

  Scenario: Successful solution
    When I investigate about the standard
    And I find a clue about the challenge
    Then I find the URL I need
    And I find the solution
    Then I solve the challenge
