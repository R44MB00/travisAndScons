# language: en

Feature: Solve Bypass me if you can challenge
  From site ringzer0team
  From sqli category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site ringzer0team
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given an login form
    And it is expecting a string
    When I submit the user and password with an or clause injected
    And I login
    Then I solve the challenge
