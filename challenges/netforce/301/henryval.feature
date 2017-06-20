# language: en

Feature: Solve the challenge Crypto basics
  From the net-force.nl website
  From the cryptography category
  With my username henryval

  Background:
    Given a line and the instruction to decode it

  Scenario: Successful solution
    When I input the code into a base64 online decoder
    Then I get another crypted string
    Then I use the online tool quipqiup
    Then I find the solution
    And I solve the challenge
