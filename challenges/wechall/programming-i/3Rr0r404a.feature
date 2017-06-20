Feature: Solve the challenge Programming 1
  From www.wechall.net
  With my username eRr0r404a
  
  Background:
    Given a url to submit the message back

  Scenario: Successful solution
    Given a web page url
    When I make an ajax program that make a get request to get the message
	    And after get the message redirect to the given url
    Then  I solve the challenge
