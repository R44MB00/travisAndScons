Feature: Solve the challenge Javascript Level 5
  From www.hackthis.co.uk
  From Lavels Javascript
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with password field
      And the web page source code
    When I view the source code of the page
      And I use jbeautifier.org to beuatifier the file extra_48d468a93b.js
      And I search the word pass
      And I recognize the code that generates and prompts of the challeng
      And I foung a algorithm that use the function String.fromCharCode
      And I convert the numbers into letters
      And I write the found value in the password field
    Then I solve the challenge
