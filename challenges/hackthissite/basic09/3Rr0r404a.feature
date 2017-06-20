Feature: Solve the challenge level 9
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
  
  Background:
    Given a explanations of how sript works
	
  Scenario: Successful solution
    Given a url where the obscure file is
    When I use the SSI vulnerabiluty of the level 8
	  And I make a xploit <!--#exec cmd="ls ../../9"-->
	  And I find the file p91e283zc3.php
	  And I find the password
    Then  I solve the challenge
