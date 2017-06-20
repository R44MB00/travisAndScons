# language: en

Feature: Solve Pequenas Grandes Diferencias challenge
  From site yashira
  From Mix category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System
    And I added a test case
	And I have 010 Editor

  Scenario: First failed attempt
    Given two apparently identical compressed files
    And I know that in terms of bytes there is some difference between them
    When I open the compressed files in the WinRAR explorer
    And I see the packed size of the two files is different
    And I try that difference as an answer
	And I don't solve the challenge
    Then I decide to look at the bytes of the files in a hex editor

  Scenario: Successful solution
    Given two apparently identical compressed files
    And I know that in terms of bytes there is some difference between them
	When I open them in the hex editor
	And I use the editor's feature to compare files
	And I see four places in which they differ
	And I add the number of bytes in which they differ
    Then I solve the challenge
