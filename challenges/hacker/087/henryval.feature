# language: en

Feature: Solve the challenge number 87
  Called Web Design 110
  From hacker.org website
  From the Web category
  With my username henryval

  Background:
    Given an hexadecimal number
    And the hint Netscape

  Scenario: Successful solution
    When I look for the number with the hint
    And I get a palette of colors
    Then I look for a site with the palette for Netscape
    Then I find the solution
    And I solve the challenge
