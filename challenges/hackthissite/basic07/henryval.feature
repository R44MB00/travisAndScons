# language: en

Feature: Solve the challenge Basic Level 7
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an empty input for a monthly calendar
    And the label for the password
    And the UNIX hint

  Scenario: Successful solution
    When I input the right command to see all the elements
    Then I get a new URL
    Then I get the answer
    And I solve the challenge
