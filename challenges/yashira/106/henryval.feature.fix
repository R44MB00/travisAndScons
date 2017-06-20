# language: en

Feature: Solve the challenge 106
  Called Autentificacion 1
  From the yashira.org website
  From the Web category
  With my username henryval

  Background:
    Given a redirectional webpage to an amazing Megadeth article
    With a prompt asking for a password
    And the Firefox extension TamperData

  Scenario: First Failed Attempt
    When I look into the source code
    And I find a javascript function
    Then I try to debug it
    And I don't solve the challenge
    But I conclude I have to try something different
    
  Scenario: Last Failed Attempt
    Given my previous mistake
    When I look for hints on the challenge's forum thread
    Then I find a nice clue given by the user sinfocol.org
    And I find on the sourcecode a hidden javascript function
    When I debug it
    Then I don't get the answer
    And I don't solve the challenge
    But I notice something strange
    
  Scenario: Successful solution
    When I look for more hidden javascript functions on the code
    Then I find one
    And I debug it and get the answer
    Then I use Firefox's tool TamperData
    And submit a challenge's solution
    And change the challenge's and result's values on the request
    Then I solve the challenge
