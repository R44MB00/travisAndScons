# language: en

Feature: Solve the challenge Basic Level 3
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an empty input

  Scenario: Successful solution
    When I look into the source code
    Then I find a new URL
    And it has the answer
    And I solve the challenge
