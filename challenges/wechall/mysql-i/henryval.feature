#language: en

Feature: Solve MySQL I challenge
  From site wechall
  From Training, Exploit and MySQL category
  With my username henryval

  Background:
    Given a classic mysql injection challenge
    And a sourcecode

  Scenario: Failed Attempt
    When I try the basic sqli
    And I get an error
    Then I don't solve the challenge
    But I decide to search for more information

  Scenario: Successful solution
    Given my previous mistake
    And I have solved yashira and hackthis sqli challenges
    When I try the right combination for the admin injection
    Then I log in
    And I solve the challenge
