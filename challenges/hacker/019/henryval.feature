# language: en

Feature: Solve the challenge number 19
  Called Rabbits Everywhere
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given the challenge about Fibonacci numbers

  Scenario: Successful solution
    Given the challenge
    When I develop a python script to calculate it
    Then I find the solution
    And I solve the challenge
