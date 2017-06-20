Feature: Solve the SQL challenge 2
  From www.thisislegal.com
  From SQL Challenges
  With ny username 3Rr0r404a
  
  Scenario: Successful solution
    Given a logging form
    When I use the basic sql injection ‘or ‘1’=’1 in the password field
      And I find the security question and notice that exist the security table
      And I use the information_schema.colums and the group_concat function
      And I find out the name of the security question column
      And modify the injection to show the answer field
      And the condition is that secquestion field is equal to mother maiden name
      And I find that the answer is freeman
      And I loggin usign the basic injection
      And I use the found answer in the security question field
    Then  I solve the challenge
