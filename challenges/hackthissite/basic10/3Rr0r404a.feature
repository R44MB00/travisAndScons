Feature: Solve the challenge level 10
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a form with a password field
    When I put some password in the passwor field
	  And I view the cookies
	  And I edit the cookie level10_authorized to yes
    Then  I solve the challenge
