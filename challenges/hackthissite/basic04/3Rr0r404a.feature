Feature: Solve the challenge level 4
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a form with a password field
    When I isnpect the button Send password to Sam in chrome
      And I change the value of the hidden field to
	  And I read the email
    Then  I solve the challenge
