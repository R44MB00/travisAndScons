# language: en

Feature: Solve Unlucky Cipher challenge
  From site Hackergateway
  From Cryptography category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site hackergateway
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given an encoded message
    When I look at the message I see scrambled letters
    And I think it is most likely a Caesar cipher
    And I see the first three letters are most likely "the"
    And I count the difference to get the shift cipher
    Then I solve the challenge
