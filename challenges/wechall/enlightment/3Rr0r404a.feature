Feature: Solve the challenge Enlightment
  From www.wechall.net
  With my username eRr0r404a

  Scenario: First part solution 
    Given a binary encode mesasge divide in 3 groups rgb
    When I read about how rbg works
      And I add the binary messages
      And I convert the binary to ascii
    Then  I find a url
  
  Scenario: Second part solution 
    Given a binary encode mesasge divide in 3 groups
    When I read about how CMYK works
      And I read the forum
      And I use the correct operation between the 3 binary numbers
    Then  I solve the challenge
