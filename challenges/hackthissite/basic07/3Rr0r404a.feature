Feature: Solve the challenge level 7
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
  
  Background:
    Given script that returns the output of the unix cal command
	
  Scenario: Successful solution
    Given encrypted password
    When I read about the unix cal command
	  And I read about code injection
	  And I inject ;ls to the given script
	  And I find the file k1kh31b1n55h.php
	  And I find the password
    Then  I solve the challenge
