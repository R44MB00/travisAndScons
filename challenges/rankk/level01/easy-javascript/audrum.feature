# language: en

Feature: Solve Easy Javascript
  From page rankk.org
  From category Level 1
  With my username Audrum

  Background:
    Given the fact I am registered in site rankk.org
    And I have Windows 10 operating system
    And I have Firefox 53 software
    And I have internet access
    And I solve Easy Javascript

  Scenario: First failed intent
    Given I am authenticated as Audrum
    When ask for a user
    And I do not know
    Then no solve the challenge
    But I conclude that I can review the source

  Scenario: Successful solution
    Given I am authenticated as Audrum
    When I analyze the source code
    And I get the user
    Then I solve the challenge
