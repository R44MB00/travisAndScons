Feature: Solve the challenge Crypt Level 4
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an encrypt text

  Scenario: Successful solution manual
    Given an password field
    When I notice that it is a substitution cipher
      And I use the tool chaos.org.uk/~eddy/craft/substitute.html
	    And I substitute jhll for pass
      And I continued replacing the letters until finding the text in clear
      And I write the found pass on password field
    Then I solve the challenge

  Scenario: Successful solution automatically
    Given an password field
    When I notice that it is a substitution cipher
	    And I use the tool quipqiup.com/
      And I write the found pass on password field
    Then I solve the challenge
