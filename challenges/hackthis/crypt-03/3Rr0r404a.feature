Feature: Solve the challenge Crypt Level 3
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an encrypt text

  Scenario: Successful solution
    Given an password field
    When I search in google a morse code table
	    And I translate the given text
      And I find clear text
      And I write the found pass on password field
    Then I solve the challenge
