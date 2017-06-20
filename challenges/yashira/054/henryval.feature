# language: en

Feature: Solve the challenge 54
  Called CoMboX
  From the yashira.org website
  From the Mix category
  With my username henryval

  Background:
    Given an executable file
    And challenges inside it
    And the Ollydbg tool

  Scenario: Failed Attempt
    Given the executable
    When I try to debug it on Ollydbg
    And I found out the answer's coded
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I run the executable
    And I solve challenge after challenge
    And I complete the test
    Then I get the solution
    And I solve the challenge

