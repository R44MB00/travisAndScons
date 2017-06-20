# language: en

Feature: Solve the challenge 24
  Called Admin Olvidadizo
  From the yashira.org website
  From the security category
  With my username henryval

  Background:
    Given a request to login as the admin
    And a hint about not login password file

  Scenario: Successful solution
    When I see the hint
    Then I login as the admin with no password
    And I solve the challenge
