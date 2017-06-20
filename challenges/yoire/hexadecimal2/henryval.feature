# language: en

Feature: Decrypt the hexadecimal string 2
  From yoire website
  From the hexadecimal category
  With my username henryval

  Background:
    Given a normal string

  Scenario: Successful solution
    When I look into the source code
    Then I find out I have to replace some letters
    And I use an online tool to decrypte the new string
    Then I find the answer
    And I solve the challenge
