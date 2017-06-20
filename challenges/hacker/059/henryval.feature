# language: en

Feature: Solve the challenge number 59
  Called 3280
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a challenge
    And I have access to internet

  Scenario: Successful solution
    Given the text file RFC 3280
    When I develop a python script
    And I analyze the file
    And I find the solution
    Then I solve the challenge
