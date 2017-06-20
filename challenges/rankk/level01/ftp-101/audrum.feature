# language: en

Feature: Solve FTP 101 
  From page rankk.org
  From category Level 1
  With my username Audrum

  Background:
    Given the fact I am registered in site rankk.org
    And I have Windows 10 operating system
    And I have Firefox 53 software
    And I have internet access
    And I solve FTP 101

  Scenario: First failed intent
    Given I am authenticated as Audrum
    When ask for a FTP command
    And I do not know
    Then no solve the challenge
    But I conclude that I can review the FTP commands

  Scenario: Successful solution
    Given I am authenticated as Audrum
    When I use the PUT FTP command
    And the name of the document
    Then I solve the challenge
