Feature: Solve the challenge Main Level 9
  From www.hackthis.co.uk
  From Lavels Main
  With ny username 3Rr0r404a

  Scenario: Successful solution
    Given a web page with a logging form
    When I follow the link to forgot form
      And I inspect the email input text with google chrome
      And I find a hidden field with an email in his value property
      And I put my email in the value property of the hidden field
      And Submit
    Then I solve the challenge
