Feature: Solve the challenge level 8
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a script that save a .shtml file
    When I read about shtml files vulnerabilities
	  And I find the Server-Side Includes in the OWASP project
	  And I make a xploit <!--#exec cmd="ls ../"-->
	  And I find the file au12ha39vc.php
	  And I find the password
    Then  I solve the challenge
