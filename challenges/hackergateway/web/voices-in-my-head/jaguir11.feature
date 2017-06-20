# language: en

Feature: Solve Voices in my head challenge
  From site Hackergateway
  From web category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site hackergateway
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given the link to the challenge
    And the name of the challenge as a clue
    When I click on the link
    And I intercept the request to look at the headers
    And I see nothing useful
    Then I realize I have to try something else

  Scenario: Successful solution
    Given the link to the challenge
    And the name of the challenge as a clue
    When I click on the link
    And I intercept the response
    And I see the answer
    Then I solve the challenge
