Feature: Solve the challenge ASCII
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a encode message
    When I use www.branah.com/ascii-converter to convert from decimal to ascii
      And I find the password
    Then  I solve the challenge
