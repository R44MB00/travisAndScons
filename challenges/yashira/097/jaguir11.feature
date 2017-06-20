# language: en

Feature: Solve Sin Codigo challenge
  From site yashira
  From Reverse Engineering category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given an executable file
    When I try to open it with olly
    And I see the debug does not work
    And the exe does not run as it should
    Then I realize I must be doing something wrong

  Scenario: Second failed attempt
    Given an executable file
    And the fact that it does not debug well with olly
    When I start reading of forums about VB reversing
    And I see a reference to P-Code
    And I do some research about it
    And I see that a way to identify p-code is with the "MethCallEngine" call
    Then I realize I have an exe in P-code

  Scenario: Successful solution
    Given an executable file
    And the fact that it is p-code
    And I downloaded VB Decompiler
    When I open the exe with VB Decompiler
    And I the p-code list
    And I see the "YaZZ" message which tells me my password is valid
    And I look at the instructions before it
    And I see a comparison with a number
    And I try that as an answer
    Then I solve the challenge
