# language: en

Feature: Solve the challenge Crypt Level 1
  From hackthis.co.uk website
  From the Crypt category
  With my username henryval

  Background:
    Given a strange text

  Scenario: Successful solution
    When I use a python script to take the text backwards
    Then I find the solution
    And I solve the challenge
