Feature: Solve the challenge No Scape
  From www.wechall.net
  With my username eRr0r404a

  Background:
    Given the source code of the challenge
      And a number of votes

  Scenario: Successful solution
    Given a vote system
      And a the source code of the system
    When I read the source code
      And I find posible update vulnerable to sql injection
      And I use the injection candidate`=111,`candidate`=`candidate
    Then  I solve the challenge
