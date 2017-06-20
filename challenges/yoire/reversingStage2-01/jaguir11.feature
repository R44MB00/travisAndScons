# language: en

Feature: Solve Crack me stage 2 very easy challenge
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
    And I see a string value "RsrcID" being pushed into the stack
    And the serial is checked against the "RsrcID"
    And I enter that id as a password
    Then I solve the challenge
