# language: en

Feature: Solve the challenge number 115
  Called Delegates
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a problem about counting

  Scenario: Successful solution
    Given the problem
    When I develop a python script following the rules
    And I execute it
    Then I find the solution
    And I solve the challenge
