Feature: Solve the challenge Forensics level 1
  From www.hackthis.co.uk
  From Lavels Forensics
  With ny username 3Rr0r404a

  Background:
    Given a disc image

  Scenario: Fail solution
    Given web page with a code field
    When I use autopsy to analyze the image disc
      And I looking for suspicious files
      And I find a file that contains something like codes
      And I try to use the codes in the code field
      And I use the code in the code input
    Then I get a error

  Scenario: Successful solution
    Given web page with a code field
    When I use autopsy to analyze the image disc
      And I find a password protected rar file
      And I crack the password
      And I extract the audio file
      And I listen the audio i notice that sound like phone tones
      And I search in google phone tone decoder
      And I get a kind of code similar to the ones found
      And format the code to look like the ones found
      And I use the code obtained in the code field
    Then  I solve the challenge
