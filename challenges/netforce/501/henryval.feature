# language: en

Feature: Solve the challenge Can you crack me?!?
  From the net-force.nl website
  From the cracking category
  With my username henryval

  Background:
    Given an executable file
    And I have the cracking tool OllyDbg

  Scenario: Successful solution
    When I input the file into OllyDbg
    And I look all over the code
    Then I find the solution
    And I solve the challenge
