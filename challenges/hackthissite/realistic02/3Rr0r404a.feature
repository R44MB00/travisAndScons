Feature: Solve the challenge Realistic 2
  From www.hackthissite.org
  From Realistic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a nazy web page
    When I inspect the source code
	  And I find the update.php page
	  And I use the user admin
	  And use SQLi in the password field
    Then  I solve the challenge
