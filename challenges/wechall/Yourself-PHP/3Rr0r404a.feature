Feature: Solve the challenge YourselfPHP
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a form with an username input field
     And the source code of the challenge
    When I read the source code and notice the use of $_SERVER[PHP_SELF]
      And I search in google about it and xss
      And I use the exploit /%22%3E%3Cscript%3Ealert(1);%3C/script%3E
    Then  I solve the challenge
