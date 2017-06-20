Feature: Solve the challenge level 11
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
	
  Scenario: Successful solution
    Given a site that show a name of a song
    When I search what is common between the songs
	  And I find that all the songs are of elton john
	  And I try to listing directories
	  And I find /e/l/t/o/n/.htaccess
	  And I read about htaccess file
	  And I find /e/l/t/o/n/DaAnswer
	  And I find the password somewhere close
    Then  I solve the challenge
