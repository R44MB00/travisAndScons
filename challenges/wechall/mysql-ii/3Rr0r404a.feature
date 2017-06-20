Feature: Solve the challenge MySQL II
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a loggin form
      And the source code of the challenge
    When I read the source code
      And I find the query vulnerable to SQLi
      And I notice that the injection must be done in the username field
      And I see the table structure in the source code
      And I notice that the entered password must be equal to the admin password
      And I make a injection that select admin as username and md5(bla) as password
      And I select from users where username is admin
      And I use a union clause to inject my sentece in the code
    Then  I solve the challenge
