# language: en

Feature: Solve Hablando con los muertos challenge
  From site yashira
  From Reverse Engineering category
  With my username jaguir11

  Background:
    Given the fact that I am registered in the site yashira
    And I have Windows 7 Operating System

  Scenario: Successful solution
    Given the disassembly file of an exe
    And the challenge name which tells me I have to apply the dead list method
    When I look for the string references
    And I see a string "Clave Valida Ok"
    And I look at the instructions right before it
    And I see a JE instruction which jumps past the "Clave Valida" message
    And I change the op code as to get the JNE instruction
    And it worked
    Then I solve the challenge
