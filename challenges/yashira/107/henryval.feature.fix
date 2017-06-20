# language: en

Feature: Solve the challenge 107
  Called Autentificacion 2
  From the yashira.org website
  From the Web category
  With my username henryval

  Background:
    Given a redirectional webpage to password input
    With a prompt asking for a password
    And the Firefox extension TamperData
    And I solved the 106 yashira challenge

  Scenario: Successful solution
    When I look any hidden javascript function
    Then I find none
    And I debug the one that's there by input the assumed answer
    Then I get the real answer
    Then I use Firefox's tool TamperData
    And submit a challenge's solution
    And change the challenge's and result's values on the request
    Then I solve the challenge
