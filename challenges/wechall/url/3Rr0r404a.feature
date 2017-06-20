Feature: Solve the challenge URL
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a encode message
    When I use ascii.cl/es/url-decoding.htm to decode url notation to ascii
      And I find a url
	    And I going to the found url
    Then  I solve the challenge
