# language: en

Feature: Solve the challenge Basic+ Level 6
  From hackthis.co.uk website
  From the Basic+ category
  With my username henryval

  Background:
    Given three empty places to fill with the information asked

  Scenario: Failed attempt
    Given the information asked
    When I look the hackthis website into the whois domain tool
    Then I find part of the information I need
    And I still don't find the last key I need
    But I conclude I have to look into the forum

  Scenario: Successful solution
    When I find an useful hint in the forum section
    Then I go to my registration email
    And I find the last item
    Then I solve the challenge
