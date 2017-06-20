# language: en

Feature: Solve the challenge Coding level 1
  From hackthis.co.uk website
  From the Coding category
  With my username henryval

  Background:
    Given some words to organize
    And a limited time

  Scenario: Successful solution
    When I develop a python script to give order to the words
    Then I quickly copy the words in it
    And the script give them back to me
    And I copy the words into the input
    Then I solve the challenge
