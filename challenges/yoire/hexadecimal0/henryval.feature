# language: en

Feature: Decrypt the hexadecimal string 0
  From yoire website
  From the hexadecimal category
  With my username henryval

  Background:
    Given a hexadecimal string

  Scenario: Successful solution
    When I use an online tool to decrypte it
    Then I find the answer
    And I solve the challenge
