# language: en

Feature: Solve Crackme 1 challenge
  From site yashira
  From Reverse Engineering category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given an executable file
    When I run the file I am asked for a password but it is never validated
    And in the debugger nothing seems to happen
    And I look at the entry point
    And I see nothing usefull
    Then I decide I need to look a lot closer at the code

  Scenario: Second failed attempt
    Given an executable file
    And a string reference to enter a password
    When I look at the instructions before the reference
    And I see some jumps
    And I set a breakpoint
    And I enter a password
    And the breakpoint triggers after each entry
    And I follow the execution to find a validation
    And I see it checks against "Shang-Tsung"
    And I try that password but still get nothing
    Then I decide I need to look at the calls being made

  Scenario: Third failed attempt
    Given an executable file
    And the section where the password validation occurs
    When I look at the calls made
    And I see that after it checks against "Shang-Tsung" it makes a call
    And it also checks for "-True"
    And I try that password but still get nothing
    Then I decide I need to look at what happens inmediately after "-True"

  Scenario: Successful solution
    Given an executable file
    And the section where the password validation occurs
    And the initial "Shang-Tsung-True" check
    When I look at the operations made after that
    And I see a JE instruction
    And I change the flag so that the jump is not taken
    And I see a message being loaded "Good, Ingresa el pass :"
    And I see the check it makes right after
    And I enter the password
    Then I solve the challenge
