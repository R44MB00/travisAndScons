# language: en

Feature: Solve the challenge number 198
  Called I'm so Special
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given the hint of a unique and special number

  Scenario: Successful solution
    When I look up for my ip address
    And I find the solution
    Then I solve the challenge
