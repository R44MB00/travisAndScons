Feature: Solve the challenge Basic Level 4
  From www.hackthis.co.uk
  From Lavels Basic
  With ny username 3Rr0r404a
  
  Background:
    Given a jpg file

  Scenario: Successful solution
    Given a web page with a loggin form
    When I use exif editor to see the metadata of the given jpg file
      And I see the artist name and the user comment
	    And I use the recolected data into the loggin form
    Then I solve the challenge
