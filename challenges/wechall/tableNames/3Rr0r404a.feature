Feature: Solve the challenge Table Names
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: Successful solution
    Given a loggin form
    When I read about MySql information tables
      And I read about MySql injection
      And I use "' union select 1,1,info from information_schema.processlist-- "
      And I find the table and database name
    Then  I solve the challenge
