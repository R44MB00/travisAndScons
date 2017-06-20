# language: en

Feature: Solve the challenge number 258
  Called Growing Bacteria
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given some rules

  Scenario: Successful solution
    When I develop a python script following the rules of the list
    Then I find the solution
    And I solve the challenge
