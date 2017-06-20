# language: en

Feature: Solve mas alla de la vista challenge
  From world of wargame website
  From Kryptos category
  With my username henryval

  Background:
    Given a braille-coded text
    And I have access to internet

  Scenario: Successful solution
    Given the text
    When I look on internet for a braille alphabet
    And I change the symbols
    Then I solve the challenge
