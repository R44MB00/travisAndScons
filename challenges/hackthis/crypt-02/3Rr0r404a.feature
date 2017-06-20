Feature: Solve the challenge Crypt Level 2
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an encrypt text

  Scenario: Successful solution
    Given an password field
    When I try classic cryptography methods
	    And I use www.dcode.fr/caesar-cipher to test caesar cipher
      And I find clear text
      And I write the found pass on password field
    Then I solve the challenge
