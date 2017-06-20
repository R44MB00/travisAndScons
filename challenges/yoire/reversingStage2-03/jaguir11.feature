# language: en

Feature: Solve Stage2 Crack me average challenge
  From site yoire
  From reversing category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yoire
    And I have Windows 7 Operating System
    And I have the ollydbg

  Scenario: Successful solution
    Given an executable file
    And the position of the error message after the initial serial input
    When I open the binary with ollydbf
    And I see the GetDigItemTextA function
    And I look at the serial check function being called
    And I see it xors the hex of each char in my password with 50
    And I see it then checks the XORed string with "#?p51#)pjy"
    And I know that the xor function is reversible
    And I open an xor calculator online
    And I xor the hex of each byte in the comparison string with 50
    And I convert the hex back to ascii
    And I get a valid serial
    Then I solve the challenge
