Feature: Solve the challenge 10
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a
  
  Scenario: Successful solution
    Given a form with a password form
    When I see the source code
      And I find the file password.swf
      And I decompile the file
      And I see the buttoncondaction
      And I find the comparations of password with flashking
    Then  I solve the challenge
