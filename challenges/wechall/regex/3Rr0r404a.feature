Feature: Solve the challenge Regex
  From www.wechall.net
  With my username eRr0r404a

  Scenario: Successful solution
    Given a string for which to make a regular expression
    When I read about regex
      And I pass the 4 levels of the challenge
      And I use the regex /^$/, /^wechall$/, /^wechall4?\.(?:jpg|gif|tiff|bmp|png)$/
    Then  I solve the challenge
