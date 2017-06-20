Feature: Solve the challenge Stegano I
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a bmp file
    When I open the given file with a hexa editor
	  And I find a message into the image
	  And I find the password
    Then  I solve the challenge
