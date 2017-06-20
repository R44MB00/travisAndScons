# language: en

Feature: Solve the challenge number 82
  Called Imagine all the Silicon
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given a strange file appearing to be an image

  Scenario: Failed attempt
    When I try to open up the file with a picture viewer
    And I don't find anything useful
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I look up for the type of the file
    Then I find an image converter
    Then I'm able to see the answer
    And I solve the challenge
