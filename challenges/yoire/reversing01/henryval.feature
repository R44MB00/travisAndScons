# language: en

Feature: Solve the reversing challenge 01
  From yoire website
  From the reversing crack category
  With my username henryval

  Background:
    Given an executable file
    And I have the OllyDbg program

  Scenario: Successful solution
    When I download the file
    And I put it through OllyDbg
    And I look for the ASCII value in the debug section
    Then I find the answer
    And I check into the executable
    And I solve the challenge
