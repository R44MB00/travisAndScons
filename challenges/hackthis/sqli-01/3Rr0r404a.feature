Feature: Solve the challenge Sqli Level 1
  From www.hackthis.co.uk
  From Lavels Sqli
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given loggin form with sql injection vulnerability
    When I write single quote accompanied by or followed by a true condition
	    And use this injection in the user and pasword fields
      And submit the form
    Then I solve the challenge
