# language: en

Feature: Solve Beginners 6 challenge
  From site Valhalla
  From beginners category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site valhalla
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a clue that the file with the password was hidden
    When I try look for the .htaccess everywhere
    And I do not get a valid page
    Then I realize it has to be another file

  Scenario: Second failed attempt
    Given a clue that the file with the password was hidden
    And the fact that it was not in .htaccess
    When I try to look for a .dir file
    And I can not find anything
    Then I realize it has to be another file

  Scenario: Successful solution
    Given a clue that the file with the password was hidden
    And the fact that it was not in .htaccess
    And the fact that it was not in .dir
    When I try to look for the robots.txt file
    And I get the link to the secret file
    Then I solve the challenge
