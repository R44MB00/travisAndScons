Feature: Solve the challenge Basic Level 7
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a hint that the web server runs a suspicious service
    When I use namp -sV ip_site -p 1-fin_port to scan the ports of the server
	    And I change the fin_port value until scan the 65535 ports
	    And find a known service running on port 6776
	    And I use netcat to connect to the port
	    And read the banner 
	    And use the word found into the answer field
    Then I solve the challenge
