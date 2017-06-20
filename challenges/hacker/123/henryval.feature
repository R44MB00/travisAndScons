# language: en

Feature: Solve the challenge number 123
  Called Melodic
  From hacker.org website
  From the Misc category
  With my username henryval

  Background:
    Given an audio file
    And the soundcorset tuner app

  Scenario: Failed attempt
    Given the audio file with some piano notes in it
    When I try to look for the solution using my guitar tuner
    And I don't find anything coherent
    Then I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I download the Soundcorset tuner app for android
    And I play the audio
    Then I write down the solution
    Then I solve the challenge
