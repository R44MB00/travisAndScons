# language: en

Feature: Solve Bufferoverflows challenge
  From site yashira
  From Security category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a buffer overflow exploit in c
    And the fact I know one line is incorrect
    And I know the problem is it doesn't finish obtaining the privileges
    When I read the exploit
    And I look at the shell code
	But I don't understand much

  Scenario: Second failed attempt
    Given a buffer overflow exploit in c
    And I know the problem is it doesn't finish obtaining the privileges
    When I do some reading on shell code
    And I find that sometimes the last part "/bin/sh" is in  a separate string
	And sometimes it has double slash "/bin//sh"
    And I edit the line accordingly
    And I get an error message
	And I don't solve the challenge
    Then I decide to keep reading about shell code

  Scenario: Third failed attempt
    Given a buffer overflow exploit in c
    And I know the problem is it doesn't finish obtaining the privileges
    When I keep on reading about shell code exploits
    And I understand a lot more about it
    And I understand "sh" is the same as "bash"
    And I try to edit the shell code from "/bin/sh" to "/bin/bash"
    And I get an error message
	And I don't solve the challenge
    But I understand the problem is not the shell code

  Scenario: Successful solution
    Given a buffer overflow exploit in c
    And I know the problem is it doesn't finish obtaining the privileges
	When I start reading about the workings of buffer overflow exploits
    And I find "Smashing The Stack For Fun And Profit" at insecure.org
    And I take my time to read it
    And I understand the construction of the exploit
	And I understand what registers need to be used
	And I understand where the address needs to be loaded
    And I modify the original exploit accordingly
    Then I solve the challenge
