Feature: Solve the challenge Intermediate Level 6
  From www.hackthis.co.uk
  From Lavels Intermediate
  With ny username 3Rr0r404a

  Background:
    Given a hint that show a xml schema
      And real name Sandra Murphy

  Scenario: Successful solution
    Given a loggin form vulnerable to xpath injection
    When I inject in the user field some string whit logic conditions
      And the string is similar to blah or realname/text()=Sandra Murphy or a=a
      And I write in thje password field some string
      And I submit the form
    Then I solve the challenge
