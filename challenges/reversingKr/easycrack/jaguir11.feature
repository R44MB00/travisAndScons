# language: en

Feature: Solve Easy crack challenge
  From site Reversing.kr
  From reversing category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site reversing.kr
    And I have Windows 7 Operating System
    And I have the ollydbg

  Scenario: First failed attempt
    Given an executable file
    When I open the binary with ollydbf
    Then I get a password box
    And I enter the wrong password
    And I get an error message back
    Then I decide to look for the message in the source

  Scenario: Second failed attempt
    Given an executable file
    And an error message after a failed password attempt
    And the position of the string in the source
    And some reading on GetDigItem text and assembler functions
    When I follow the code starting at the message prompt
    And I see an ascii comparison to "5y"
    And another ascii comparison to "R3versing"
    And I enter the password "5yR3versing"
    And I get the error message
    Then I realize I must have missed more comparisons

  Scenario: Successful solution
    Given an executable file
    And an error message after a failed password attempt
    And the position of the string in the source
    And some reading on GetDigItem text and assembler functions
    And a single comparison to the string "5y"
    And a repetitive comparison of the password string to "R3versing"
    When I keep looking at the code
    And I see an ascii comparison to 61
    And I see an ascii comparison to 45
    And I know the values are stored in hexadecimal
    And I get the corresponding ascii chars for the hex values
    And I enter the complete password
    Then I solve the challenge
