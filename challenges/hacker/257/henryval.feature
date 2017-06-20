# language: en

Feature: Solve the challenge number 257
  Called V.I.L.E.
  From hacker.org website
  From the Crypto category
  With my username henryval

  Background:
    Given a group of decimal numbers with plus signs in between
    And I have access to internet
    And I have access to the hacker.org forum

  Scenario: First failed attempt
    Given I think it's an addition
    When I input the incorrect answer
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Second failed attempt
    Given my previous error
    When I look for the respective ASCII values
    And I don't solve the challenge
    Then I conclude I have to try something else

  Scenario: Last failed attempt
    Given my previous error
    When I look for clues in the forum
    Then I find a comment about numeric prefixes
    Then I look for every country's number
    And I figure out a coherent answer
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous mistake
    When I modify my answer according with other words
    Then I find the solution
    And I solve the challenge
