# language: en

Feature: Solve the challenge 128
  Called SQL inyeccion I
  From the yashira.org website
  From the security category
  With my username henryval

  Background:
    Given a request to login as xmcax

  Scenario: Failed Attempt
    When I try some basic SQL injections
    Then I don't solve the challenge
    But I figure out I have to change my injection
    
  Scenario: Successful solution
    When I adapt my SQLi according to the username
    Then I login as him
    And I see the solution
    Then I solve the challenge
