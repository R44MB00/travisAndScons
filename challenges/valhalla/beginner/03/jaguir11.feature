# language: en

Feature: Solve Beginners 3 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given the link to the challenge
    When I click on the link
    And I get a message saying I am not authorized to view the page
    Then I realize I have to view the request made

  Scenario: Successful solution
    Given the link to the challenge
    When I click on the link
    And I intercept the request
    And I edit the cookie value
    Then I solve the challenge
