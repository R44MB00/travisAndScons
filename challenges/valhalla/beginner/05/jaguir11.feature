# language: en

Feature: Solve Beginners 5 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given a website
    And a list of browsers from the last visitors
    When I intercept the request
    And I enter my xss as the user agent
    Then I solve the challenge
