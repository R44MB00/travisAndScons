# language: en

Feature: Solve Random Challenge 1 challenge
  From site yashira
  From Security category
  With my username jaguir11

  Background:
    Given the fact that I am registered in the site yashira
    And I have Windows 7 Operating System
    And I have Burpsuite
    And I have postman

  Scenario: First failed attempt
    Given a password recovery functionality
    And the password recovery process flow
    And the function which generates the token
    When I submit a request to recover the administrator's password
    And I intercept the request
    And I look for a way to redirect the email being sent with the token
    And I can not find a way to do it
    Then I can not redirect the email and I have to understand the token

  Scenario: Second failed attempt
    Given a password recovery functionality
    And the password recovery process flow
    And the function which generates the token
    When I look closely at the function
    And I the token is made up of 20 chars randomly selected from an array
    And I see the function being used for the token is mt_rand(0, 61)
    And I run the function locally to produce a token
    And I always get different tokens
    Then I decide to look at the mt_rand() function and how it works

  Scenario: Successful solution
    Given a password recovery functionality
    And the password recovery process flow
    And the function which generates the token
    When I read about the mt_rand() function
    And I understand it generates a random value based on an initial seed
    And I read that the seed can be reset with mt_srand()
    And I notice the token generator function used mt_srand(time())
    And I understand how time() gives an output
    When I attempt to recover the password again
    And I submit the request to generate the token
    And I intercept the request
    And I look at the server time on the response
    And I get the output for time() at that specific time the server responded
    And I run mt_srand(x) where x is the time() output I got
    And I locally run the token generator function with the correct seed
    And I send a post request to reset the password with the generated token
    And I get an answer with the challenge token
    Then I solve the challenge
