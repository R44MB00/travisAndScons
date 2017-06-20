# language: en

Feature: Solve the challenge number 97
  Called A Little PHP
  From hacker.org website
  From the Coding category
  With my username henryval

  Background:
    Given a segment of PHP code
    And I have access to internet

  Scenario: Successful solution
    When I eval the code on an online PHP sandbox
    And I find the solution
    Then I solve the challenge
