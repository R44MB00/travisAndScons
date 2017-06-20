# language: en

Feature: Solve Stack Overflows 1 challenge
  From site yashira
  From Security category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given an executable file that is vulnerable to a stack overflow exploit
    When I do some research about the vulnerability
    And I read an example that exploits it through sockets
    And I write a python script to connect via sockets to the app
    And send the app a long input expecting an error
    And I execute it trying many ports
    And the connection always fails
    Then I realize the app is not expecting a socket connection

  Scenario: Second failed attempt
    Given an executable file that is vulnerable to a stack overflow exploit
    When I do some research about different ways to exploit it
    And I find the OWASP stack overflow testing guide
    And I see I can execute the program with arguments in ollydbg
    When I try to send it a very long sequence of "A"
    And I see all the registers full of "A"s - 41
    And the program terminates with an error
    Then I decide to do some debugging

  Scenario: Third failed attempt
    Given an executable file that is vulnerable to a stack overflow exploit
    When I search for string references
    And I find the string which tells me I have succeeded
    And I see two vulnerable calls - strcopy and strcomp
    And I set breakpoints in those positions
    And I run the debugger with a long sequence of "A"s
    And I see in strcomp it compares the string "bien;)" with part of my input
    Then I realize I have to find out against which part it compares it

  Scenario: Successful solution
    Given an executable file that is vulnerable to a stack overflow exploit
    And a comparison of part of my input against "bien;)"
    When I run the debugger with a non-repeating sequence of chars "abc...z"
    And I see it start comparing "bien;)" against "qrs..."
    And I know now where to insert my payload
    And I run the debugger again with 16 "A"s followed by the answer string
    And I pass all the comparisons
    Then I solve the challenge
