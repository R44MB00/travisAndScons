Feature: Solve the challenge MySQL I
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a loggin form
      And the source code of the challenge
    When I read the source code
      And I find the query vulnerable to SQLi
      And I notice that the injection must be done in the username field
      And I use "admin' or '1'='1" to exploit the vulnerability
    Then  I solve the challenge
