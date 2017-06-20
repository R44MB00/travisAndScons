# language: en

Feature: Solve escritura especular challenge
  From world of wargame website
  From Kryptos category
  With my username henryval

  Background:
    Given the challenge
    And a hint

  Scenario: Successful solution
    Given the hint
    When I use a mirror
    Then I find the solution
    And I solve the challenge
