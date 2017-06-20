Feature: Solve the challenge PHP LFI
  From www.wechall.net
  With my username eRr0r404a
  
  Background:
    Given the source code of the challenge
      And file include vulnetability

  Scenario: Fail solution
    Given a file to include
    When I read the source code
      And I notice that the parameter that need to use is named file
      And I include the file ../solution.php
      And I read the error en the challenge page
    Then  I don't solve the challenge
    But I noticed that the url and file name was not found and were malformed

  Scenario: Successful solution
    Given a file to include
    When I fixed the url
      And the file was found
    Then  I solve the challenge
