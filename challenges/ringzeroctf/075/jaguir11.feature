# language: en

Feature: Solve Looking for password file challenge
  From site ringzer0team
  From web category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site ringzer0team
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a website
    And a link that receives the page to display as a parameter
    When try LFI to get the password file
    And I get an invalid file name error message
    Then I realize I have to try a different way

  Scenario: Successful solution
    Given a website
    And a link that receives the page to display as a parameter
    When I try to directy input the password file path as a parameter
    And I the password file with the flag
    Then I solve the challenge
