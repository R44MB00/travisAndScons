# language: en

Feature: Solve the challenge 3
  From the hackthissite.org website
  From the javascript category
  With my username henryval

  Background:
    Given a segment of javascript code

  Scenario: Successful solution
    When I analyze the code itself
    Then I find out about the lenght of the password
    Then I solve the challenge
