# language: en

Feature: Solve the challenge number 34
  Called The Powers That Be
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given instructions to solve the challenge

  Scenario: Successful solution
    Given the steps
    When I develop a python script to calculate the answer
    Then I find the solution
    And I solve the challenge
