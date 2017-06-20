# language: en

Feature: Solve the challenge number 58
  Called Lorem Ipsum
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given a text file
    And the hint of a word that only appears once

  Scenario: Successful solution
    Given the file
    Then I work up a python script
    And I add the file
    And I find the solution
    Then I solve the challenge
