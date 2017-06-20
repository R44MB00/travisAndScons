Feature: Solve the challenge level 3
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a form with a password field
    When I read the source code
      And I search the word password
	  And I find a hidden field named file with value password.php
	  And I open the password.php file
	  And I find the password
    Then  I solve the challenge
