# language: en

Feature: Solve xls challenge
  From site yashira
  From Mix category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System
	And I have 010 Hex Editor

  Scenario: Successful solution
    Given an excel file with password protection
    When I open the file with 010 Hex Editor
    And I look for the macro section
    And I see something that looks like a password
    Then I solve the challenge
