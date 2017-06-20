# language: en

Feature: Solve md5 challenge
  From world of wargame website
  From Kryptos category
  With my username henryval

  Background:
    Given a md5 hash

  Scenario: Successful solution
    Given the description
    When I find an online md5 decoder
    And I decrypt the hash
    Then I find the solution
    And I solve the challenge
