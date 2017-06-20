# language: en

Feature: Solve the challenge The Idiot Test
  From the hackthissite.org website
  From the basic category
  With my username henryval

  Background:
    Given an input

  Scenario: Successful solution
    When I look into the source code
    Then I find the solution in a comment
    And I solve the challenge
