# language: en

Feature: Solve the challenge Javascript Obfuscation 1
  From root-me.org website
  From the Web Client category
  With my username henryval

  Background:
    Given the challenge
    And a password to find

  Scenario: Successful solution
    When I look into the sourcecode
    And I find a javascript function in escape URL encoding
    Then I use an online URL decoder
    And I find the solution
    Then I solve the challenge
