# language: en

Feature: Solve the challenge number 18
  Called File Mistery
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a file with .fl extension
    And I have 7-zip installed

  Scenario: Failed attempt
    Given the file
    When I open it with a text editor
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I decompress the file using 7-zip
    And I find another file
    And I open that file with a text editor
    Then I find the solution
    And I solve the challenge
