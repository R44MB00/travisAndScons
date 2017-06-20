Feature: Solve the challenge Realistic 3
  From www.hackthissite.org
  From Realistic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a defacement web page
    When I inspect the source code
	  And I find a comment that says the oldindex.html file exists
	  And I open the original web page
	  And I copy the source code of the original web page
	  And I use the submit poetry form
	  And I submit the original code and saved as ../index.html
    Then  I solve the challenge
