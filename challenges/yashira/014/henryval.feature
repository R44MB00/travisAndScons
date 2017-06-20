# language: en

Feature: Solve the challenge 14
  Called Obteniendo informacion
  From the yashira.org website
  From the Seguridad category
  With my username henryval

  Background:
    Given some guest credentials
    And the admin credentials
    And I've solved the 41 yashira challenge

  Scenario: Failed Attempt
    Given the admin credentials
    When I login as the admin
    Then I realize it throws an error
    And I don't solve the challenge
    But I conclude I have to look for clues

  Scenario: Successful solution
    When I get an important clue in the forum
    Then I make a test on the cookies
    And I change the username and password
    And the hash md5 of both
    And I reload the page
    Then I get the admin session
    And I get the answer
    Then I solve the challenge

