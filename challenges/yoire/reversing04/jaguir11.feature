# language: en

Feature: Solve Crack me hard challenge
  From site yoire
  From reversing category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yoire
    And I have Windows 7 Operating System
    And I have the ollydbg

  Scenario: First failed attempt
    Given an executable file
    And the error message after the initial serial input
    And the position of the string from the error in the source
    When I open the binary with ollydbf
    And I get an error message indicating the invalid use of a debugger
    Then I decide to look for the jump before the error message

  Scenario: Second failed attempt
    Given an executable file
    And the error message after the initial serial input
    And the position of the string from the error in the source
    When I open the binary with ollydbf
    And I edit the jump to ignore the debugger check
    And I see the GetDigItemTextA function followed by many comparisons
    And I convert the hex symbols from the comparisons
    And I enter the serial
    And I get an invalid serial message
    Then I decide to take a better look at the comparisons

  Scenario: Successful solution
    Given an executable file
    And the hex symbols in the comparisons
    When I check the order of the chars being checked
    And I see it does not check the serial in a sequential manner
    And I rearrange the letters in the serial
    And I enter the answer
    Then I solve the challenge
