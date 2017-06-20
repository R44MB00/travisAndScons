Feature: Solve the challenge Addslashes
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a loggin form
     And the source code of the challenge
    When I read the source code and notice the use of addslashes
      And I search in google about bypass addslashes function
      And I use the payload %bf%27 union select CHAR(65,100,109,105,110)%23
    Then  I solve the challenge
