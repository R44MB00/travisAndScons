Feature: Solve the challenge Real level 1
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a

  Background:
    Given total access to email account

  Scenario: Successful solution
    Given an email of activate account
      And emails in the trash
    When I looking for relevant information into trash
      And I find an email with subject password request
      And I read the email to find the password
      And I follow the link in the given email of activate account
      And I use the password in the input field
      And I submit the form
    Then  I solve the challenge
