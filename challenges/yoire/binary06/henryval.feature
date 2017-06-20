# language: en

Feature: Decrypt the binary string 1
  From yoire website
  From binary identification category
  With my username henryval

  Background:
    Given a binary coded string
    And the JPK tool

  Scenario: Failed attempt
    When I use the JPK tool
    And I input the binary string
    And I decode the string
    Then I find a coherent answer
    And I don't solve the challenge
    But I conclude I have to try something else

  Scenario: Successful solution
    When I look into the source code of the challenge
    Then I see the javascript code with a replace function
    Then I analyze it
    And I find the answer
    And I solve the challenge
