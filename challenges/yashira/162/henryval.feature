# language: en

Feature: Solve the challenge 162
  Called ¿Mas?
  From the yashira.org website
  From the Seguridad category
  With my username henryval

  Background:
    Given a RFI challenge
    And I've solved the 117 yashira challenge
    And the Windows hint

  Scenario: Failed Attempt
    Given the RFI challenge
    When I try to do it the way I did on the 117 challenge
    Then I realize it doesn't work
    And I don't solve the challenge
    But I conclude I have to look for clues

  Scenario: Successful solution
    When I get an important clue in the forum
    Then I make a test about the echo syntaxis for creating a file
    And I realize an error occurs
    And I decide to look for the fixed syntaxis for windows echo
    Then I discover how to fix the problem
    And I solve the challenge

