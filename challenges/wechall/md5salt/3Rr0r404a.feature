Feature: Solve the challenge MD5.SALT
  From www.wechall.net
  With my username eRr0r404a

  Background:
    Given a hint that tell me the table name
      And the hint confirm the exitance of username and password columns
  
  Scenario: Successful solution
    Given a loggin form
    When I use the single quote in username field to get information about SQLi
      And I create the payload using a union select password where username=Admin
      And I get the hashed password of the admin
      And I create a new user without password
      And I get the hashed password
      And I decode the the password of new user to obtein the salt
      And I decode the hash of the admin and substarct the salt
    Then  I solve the challenge
