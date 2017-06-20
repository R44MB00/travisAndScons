# language: en

Feature: Decrypt the string
  From yoire website
  From crypt xor category
  With my username henryval

  Background:
    Given an incoherent string
    And the XOR key
    And I have access to internet

  Scenario: Failed attempt
    When I find a XOR calculator online
    And I input the data to be XORed
    Then I don't find anything coherent
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I find another site
    And it calculates the XOR encryption well
    Then I input the binary values of the string and the key
    And I get another binary string
    Then I translate in the JPK tool
    Then I find the answer
    And I solve the challenge
