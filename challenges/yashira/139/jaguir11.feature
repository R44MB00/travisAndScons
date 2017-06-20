# language: en

Feature: Solve Stack Overflows 2 challenge
  From site yashira
  From Security category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System
    And I have solved stack overflows 1

  Scenario: Successful solution
    Given an executable file that is vulnerable to a stack overflow exploit
    And a memory address to force into EIP
    When I run the debugger
    And I pass it a long non-repeating sequence of chars as an argument
    And I get an error saying the memory address "41303141" is not readable
    And I know that "A10A" in my non-repeating sequence of chars
    And I now know where to insert my payload
    And I know contents in EIP are read backwards
    And I reverse my payload "41524859" "59485241"
    And I run the debugger again with a sequence of "A"s and my payload
    And I get an error saying the memory address "41524859" is not readable
    Then I solve the challenge
