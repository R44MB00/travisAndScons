Feature: Solve the challenge Basic Level 6
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with a form
    When I use myip.ms for search the ip and hosting of hackthis.co.uk
	    And I read the forum to know what is the X-B6 header
      And I open a email from hackthis in my hotmail email account
	    And I view the source code of the email looking for X-B6
	    And I use the recolected data in the form
    Then I solve the challenge
