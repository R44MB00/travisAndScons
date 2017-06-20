Feature: Solve the challenge 8
  From www.thisislegal.com
  From Basic Challenges
  With ny username 3Rr0r404a
  
  Scenario: Successful solution
    Given the crack this.exe app
    When I use immunity debugger to debug the app
      And I search for strings
      And I find the string to for the correct password
      And I find the jump to crack the app
      And I change the zero flag to 0
      And I find the password
    Then  I solve the challenge
