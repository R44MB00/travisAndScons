# language: en

Feature: Solve WEP Security challenge
  From site yashira
  From Cracking category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a .cap file
    And a network ESSID
    And a network BSSID
    When I try to crack the WEP key using aircrack-ng
    And I see I do not have enough IVs to crack it
    Then I decide to read about WEP cracking and aircrack

  Scenario: Second failed attempt
    Given a .cap file
    And a network ESSID
    And a network BSSID
    And some more in depth reading on aircrack
    When I try to crack the WEP key with aircrack
    And I try executing it with various options that would improve my chances
    And I still can not crack it
    Then I decide to read about cracking using dictionaries

  Scenario: Third failed attempt
    Given a .cap file
    And a network ESSID
    And a network BSSID
    And some more in depth reading on aircrack
    And some reading on creating dictionaries
    When I create some dictionaries based on the ESSID and the BSSID
    And I try aircrack with the dictionary
    And I still can not crack it
    Then I decide to understand why the ESSID and the BSSID are important

  Scenario: Successful solution
    Given a .cap file
    And a network ESSID
    And a network BSSID
    When I dome some research on routers with default ESSID
    And I find something about telefonica and the ESSID they generate
    And I find a tool to generate default keys based on ESSID and BSSID
    And I create a dictionary using this tool
    And I run aircrack with that dictionary
    And I get a key
    Then I solve the challenge
