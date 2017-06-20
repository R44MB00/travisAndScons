# language: en

Feature: Solve the challenge number 24
  Called A Few Percent
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given some hexadecimal numbers with percentage symbols
    And I have solved the URL challenge on wechall

  Scenario: Successful solution
    When I use an URL online decoder
    And I input the string
    Then I find the solution
    And I solve the challenge
