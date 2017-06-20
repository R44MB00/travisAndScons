Feature: Solve the challenge The Guestbook
  From www.wechall.net
  With my username eRr0r404a
  
  Scenario: fail solution
    Given a form with a text area to write a message
     And the source code of the challenge
    When I try to make a SQLi using the text area
      And I notice that the payload was interpreted as string
    Then  I don't solve the challenge 
    But I take a time to study better the insert instruction

  Scenario: Successful solution
    Given a form with a text area to write a message
     And the source code of the challenge
    When I try notice that the $ip variable use the function gbook_getIP()
      And I read about HTTP_X_FORWARDED_FOR, HTTP_VIA, REMOTE_ADDR
      And I find that i can use the HTTP_X_FORWARDED_FOR to inject code
      And I use burpsuit to create the header HTTP_X_FORWARDED_FOR
      And I use the payload ”,(SELECT gbu_password from gbook_user limit 1));#
    Then  I solve the challenge
