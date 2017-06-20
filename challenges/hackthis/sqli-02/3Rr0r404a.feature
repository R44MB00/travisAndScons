Feature: Solve the challenge Sqli Level 2
  From www.hackthis.co.uk
  From Lavels Sqli
  With ny username 3Rr0r404a

  Scenario: Getting an admin user
    Given a search with parameter q vaulnerable to sqli
    When I write an exploit that shows the admin field of the members table
	    And I use the result to modify the exploit to show the admin username
    Then I get a admin username

  Scenario: Getting the admin user password
    Given a search with parameter q vaulnerable to sqli
    When I write an exploit that shows the password field of the user members table
	    And I find the hash of bellamod password
	    And I use crackstation to crack the hash
    Then I get a admin password

  Scenario: Successful solution
    Given a administrator credentials bellamod super
    When I use those credentials in the login form
    Then I solve the challenge
