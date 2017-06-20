# language: en

Feature: Solve the challenge 20
  Called Abriendo un rar
  From the yashira.org website
  From the Cracking category
  With my username henryval

  Background:
    Given a compressed rar file
    And I have as OS windows 10

  Scenario: Successful solution
    When I look on internet for any rar cracking tools
    Then I come up with a nice tool called KRyLack
    But it only decrypts three-characters-long passwords
    And I test it on the locked file
    Then I get the solution
    And I solve the challenge

