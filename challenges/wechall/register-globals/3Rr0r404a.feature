Feature: Solve the challenge Register Globals
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a loggin form
      And the source code of the challenge
    When I read the register globals php vulnerability
	    And I read the source code
	    And I use login[0]=admin passing it on the url
    Then  I solve the challenge
