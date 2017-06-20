Feature: Solve the challenge Crypt Level 1
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an encrypt text

  Scenario: Successful solution
    Given an password field
    When I read the given text from left to right and bottom to top
	    And I write the given pass on password field
    Then I solve the challenge
