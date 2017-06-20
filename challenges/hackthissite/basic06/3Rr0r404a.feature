Feature: Solve the challenge level 6
  From www.hackthissite.org
  From Basic missions
  With my username 3Rr0r404a
  
  Background:
    Given a encryption method
	
  Scenario: Successful solution
    Given encrypted password
    When I encrypt the string 123 using the encryption method
	  And I realize that the method of encryption used is a method of displacement
      And I realize that the amount that moves is the position in the string
      And I find each letter in the string in the ascii table
	  And I substract the position in the string to find new ascii
	  And I decrypt the password given
    Then  I solve the challenge
