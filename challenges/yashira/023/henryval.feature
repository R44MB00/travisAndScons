# language: en

Feature: Solve the challenge 23
  Called Abriendo un mdb
  From the yashira.org website
  From the Cracking category
  With my username henryval

  Background:
    Given a locked database
    And the Cain & Abel hacking program

  Scenario: Successful solution
    When I do research on internet on how to crack it
    Then I get with a recommendation about C&A
    And I download the program
    And I crack the database file with it
    Then I get the solution
    And I solve the challenge

