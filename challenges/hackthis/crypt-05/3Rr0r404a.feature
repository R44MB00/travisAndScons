Feature: Solve the challenge Crypt Level 5
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an encrypt text

  Scenario: Successful solution
    Given an password field
    When I notice that it is a substitution cipher
      And I use the tool chaos.org.uk/~eddy/craft/substitute.html
	    And I substitute ccdf for pass
      And I continued replacing the letters until finding the text in clear
      And I read the clear text from left to right and bottom to top
      And I write the found pass on password field
    Then I solve the challenge
