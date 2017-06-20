# language: en

Feature: Solve A Bit of Confusion challenge
  From site Hackergateway
  From Cryptography category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site hackergateway
    And I have Windows 7 Operating System
    And I have an online Binary to ASCII tool

  Scenario: Successful solution
    Given the sequence of binary bits
    When I convert the binary to ASCII with and online tool
    And I see decoded string
    And I solve the challenge
