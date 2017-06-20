Feature: Solve the challenge Basic Level 5
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a
  
  Background:
    Given a jpg file

  Scenario: Successful solution
    Given a web page with a loggin form
    When I use hexa editor to open the image
      And I search the string pass
	    And I use the founded credentials into the loggin form
    Then I solve the challenge
