Feature: Solve the challenge 7
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a
  
  Background:
    Given a hint that show something to search in google
    
  Scenario: Successful solution
    Given a web page that uses frontpage
    When I search in google Vermeer Technology Inc
      And I read about frontpages extensions and his vulnerabilities
      And I find the file administrators.pwd
      And I use john  the ripper to crack the password
      And I use the found credentials in the loggin form
    Then  I solve the challenge
