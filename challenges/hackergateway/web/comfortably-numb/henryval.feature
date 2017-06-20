# language: en

Feature: Solve the challenge Comfortably Numb
  From the hackergateway website
  From the Web category
  With my username henryval

  Background:
    Given the answer
    And a non-working button

  Scenario: Successful solution
    When I inspect the page's elements
    And I find the piece of code where the button is disabled
    Then I delete that off the code
    And I solve the challenge
