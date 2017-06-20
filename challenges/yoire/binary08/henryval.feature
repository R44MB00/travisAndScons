# language: en

Feature: Decrypt the binary string 3
  From yoire website
  From binary identification category
  With my username henryval

  Background:
    Given a binary coded string
    And the JPK tool

  Scenario: Successful solution
    When I look into the source code of the challenge
    Then I see the javascript code
    Then I analyze it
    And I conclude what I have to do with the string
    Then I translate into ASCII
    And I reverse the string
    And I translate it again
    Then I find the answer
    And I solve the challenge
