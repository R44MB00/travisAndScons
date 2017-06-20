# language: en

Feature: Solve Jinxed Message challenge
  From site Hackergateway
  From Cryptography category
  With my username jaguir11

  Background:
    Given the fact that I am registered in site hackergateway
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given an encoded message
    And and online hex to ASCII tool
    When I look at the message I see alphanumeric pairs of data
    And I realized they were hex numbers
    And I use the hex to ASCII tool to decode the message
    And I solve the challenge
