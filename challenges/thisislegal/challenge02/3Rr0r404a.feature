Feature: Solve the challenge 2
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with a loggin form
    When I looking for credentials in the soorce code
      And I fing javascript function login
      And I notice that the funcion have the credentials
      And I use the found credentials in the loggin form
      And I submit the form
    Then  I solve the challenge
