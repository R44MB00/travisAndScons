# language: en

Feature: Solve Crack me very hard challenge
  From site yoire
  From reversing category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yoire
    And I have Windows 7 Operating System
    And I have the ollydbg

  Scenario: First failed attempt
    Given an executable file
    And the position of the error message after the initial serial input
    When I open the binary with ollydbf
    And I see it checks for a debugger
    And I force a jump to skip the debugger check
    And I see the GetDigItemTextA function followed by a function call
    And I look at the comparisons performed in that function
    And I see my each digit of my serial go through a series of calculations
    And I see at the end it compares the final result with 1
    And I get an invalid serial message
    Then I decide to take a closer look at the calculations performed

  Scenario: Successful solution
    Given an executable file
    And the position of the error message after the initial serial input
    When I open the binary with ollydbf
    And I skip the debugger check
    And I look at the serial check function
    And I see it first divides the number 720300 by my serial's first digit
    And I see it stores the answer then repeats the procedure
    And I grab a pen, paper and calculator
    And I find a series of numbers to divide the seed by and get 1 at the end
    And I enter the answer
    Then I solve the challenge
