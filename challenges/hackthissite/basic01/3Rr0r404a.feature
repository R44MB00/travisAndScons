Feature: Solve the challenge level 1
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
  
  Scenario: Successful solution
    Given a form with a password field
    When I see the source code
      And I find a comment with the password
	  And I used in the form
    Then  I solve the challenge
