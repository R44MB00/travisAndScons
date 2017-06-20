# language: en

Feature: Solve the challenge Crypt Level 5
  From hackthis.co.uk website
  From the Crypt category
  With my username henryval

  Background:
    Given a strange and incoherent text

  Scenario: Successful solution
    Given a colon on the oposite direction in the text
    Then I use a python script to turn the text backwards
    Then I use the online tool quipqiup
    And I find the solution
    And I solve the challenge
