Feature: Solve the challenge Intermediate Level 3
  From www.hackthis.co.uk
  From Lavels Intermediate
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page
    When I use edit this cookie chrome extension
      And I change the value of the cookie restricted_login to true
      And press the button enter site
    Then I solve the challenge
