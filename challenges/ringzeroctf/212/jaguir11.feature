# language: en

Feature: Solve Big brother is watching challenge
  From site ringzer0team
  From web category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site ringzer0team
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given an hint that tells me google can not find this one
    When I look at the robots file
    And I find a hidden url
    And I find the flag
    Then I solve the challenge
