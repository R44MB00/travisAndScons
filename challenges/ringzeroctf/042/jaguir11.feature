# language: en

Feature: Solve Words mean something challenge
  From site ringzer0team
  From web category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site ringzer0team
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given an insignificant text
    When look at the page source
    And I find nothing useful
    Then I realize I have to look somewhere else

  Scenario: Successful solution
    Given an insignificant text 
    When I look at the cookies
    And I see the cookie flag
    And I change the value of the flag
    Then I solve the challenge
