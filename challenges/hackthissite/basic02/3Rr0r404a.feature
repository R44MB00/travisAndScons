Feature: Solve the challenge level 2
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
  
  Scenario: Fail solution
    Given a form with a password field
	  And a hint
    When I see the source code
      And I looking for a password or javascript function
	  And I don't found anything
    Then  I don't solve the challenge
	But I conclude that i need to try something else
	
  Scenario: Successful solution
    Given a form with a password field
	  And a hint
    When I read the given hint
      And I realize that it was not possible to upload the file
	  And I try just submit the form without password
    Then  I solve the challenge
