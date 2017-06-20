Feature: Solve the challenge Basic Level 2
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a specific user agent
    When I use the google chrome developer tools
      And open the network category
	    And open network conditions
	    And uncheck the select automatically user agent option
	    And write the given user agent in the custom option
	    And reload the challenge page
    Then I solve the challenge
