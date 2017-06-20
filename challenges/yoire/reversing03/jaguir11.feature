# language: en

Feature: Solve crack me average challenge
  From site yoire
  From reversing category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yoire
    And I have Windows 7 Operating System
    And I have the ollydbg

  Scenario: Successful solution
    Given an executable file
    And the error message after the initial serial input
    And the position of the string in the source
    When I analyze the code before the error message
    And I see ten comparisons right before
    And I get the corresponding ascii chars for the hex values
    And I enter the correct serial
    Then I solve the challenge
