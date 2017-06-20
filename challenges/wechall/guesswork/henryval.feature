# language: en

Feature: Solve Guesswork challenge
  From site wechall
  From Exploit category
  With my username henryval

  Background:
    Given a chat between WeChall and Gizmore

  Scenario: First failed try
    Given the chat
    When I ingress the site's name
    And I get a clue telling me I'm close
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Last failed try
    When I do some research about its activity
    And I read the other people's questions
    And I conclude a coherent password
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I read the right clue
    And I descover the solution
    Then I solve the challenge
