Feature: Solve the challenge Crypt Level 6
  From www.hackthis.co.uk
  From Lavels Crypt
  With ny username 3Rr0r404a
  
  Background:
    Given an wav file

  Scenario: fail solution
    Given an password field
    When I read about steganography
      And I analyze the wave file with audacity
      And I find some point and lines
      And I search in google numerical system with lines and points
      And I notice that the maya number system looks like the symbols in the file
      And I convert the symbols to numbers
      And I write the found pass on password field
    Then  I get and error

  Scenario: Successful solution
    Given a number
    When I guess the number is hexadecimal
	    And search in google a hexa to ascii online converter
      And I write the ascii text of the number in the password field
    Then I solve the challenge
