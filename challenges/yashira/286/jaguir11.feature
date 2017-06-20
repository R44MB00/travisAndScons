# language: en

Feature: Solve Encuentrame challenge
  From site yashira
  From Security category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site yashira
    And I have Windows 7 Operating System

  Scenario: First failed attempt
    Given a link
    And a 404 error when I try to navigate to the link
    And the challenge description tells me there is a hidden file
    When I try the basic methods to discover hidden files
    And I try to visit .htaccess, robots.txt, .dir
    And I still get a 404 error
    Then I decide I need to read more about methods to hide files on a server

  Scenario: Successful solution
    Given a link
    And a 404 error when I try to navigate to the link
    And the challenge description tells me there is a hidden file
    When I try new ways of discovering hidden files
    And I check the listings
    And I find a secret file
    And I enter the password
    Then I solve the challenge
