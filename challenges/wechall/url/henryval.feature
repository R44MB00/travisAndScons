# language: en

Feature: Solve URL challenge
  From wechall website
  From Encoding and Training category
  With my username henryval

  Background:
    Given a string of hexadecimal characters

  Scenario: Successful solution
    When I input the string in an online URL decoder called meyerweb
    Then I find the solution
    And I solve the challenge
