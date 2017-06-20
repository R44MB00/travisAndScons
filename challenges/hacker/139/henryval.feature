# language: en

Feature: Solve the challenge number 139
  Called Didactic Vampire Text
  From hacker.org website
  From the Crypto category
  With my username henryval

  Background:
    Given a large text
    And an online text comparer
    And I have acces to the internet

  Scenario: Failed attempt
    Givne the text
    When I find on the internet the original text
    And I compare the texts on the website
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    Given my previous mistake
    When I look for any clue on the forum
    And I find a hint
    Then I develop a python script
    And I input the complet string
    And I find the solution
    Then I solve the challenge
