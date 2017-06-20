# language: en

Feature: Solve the challenge 17
  Called Password 1
  From the yashira.org website
  From the Web category
  With my username henryval

  Background:
    Given a password input box
    And a button
    And I solved the 106 yashira challenge

  Scenario: Successful solution
    When I look into the sourcecode
    Then I find a javascript function
    But I already solved the 106 yashira challenge
    And I know that's not the right js function
    Then I find a hidden one on a html line
    And I debug it and get the answer
    Then I solve the challenge
