Feature: Solve the challenge Realistic 5
  From www.hackthissite.org
  From Realistic missions
  With my username 3Rr0r404a
  
  Background:
    Given a message from Spiffomatic64
	
  Scenario: Successful solution
    Given a web page
    When I lookin for information and attack vectors
      And I read the news section
	    And I find the robots.txt file
	    And I open the /secret directory
	    And I find the file admin.bak.php
	    And I find a hash reveled for the file admin.bak.php
	    And I use Cain & Abel to crack the hash
    Then  I solve the challenge
