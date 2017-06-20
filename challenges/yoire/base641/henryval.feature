# language: en

Feature: Decrypt the string
  From yoire website
  From base64 category
  With my username henryval

  Background:
    Given a base-64 coded string
    And the JPK tool
    And I have access to internet

  Scenario: Successful solution
    When I use an online base-64 decoder
    And I input the string
    Then I get a binary-coded string
    When I use the JPK to decode it
    Then I get a coded string
    And I use an online hexadecimal to ascii tool
    Then I find the solution
    And I solve the challenge
