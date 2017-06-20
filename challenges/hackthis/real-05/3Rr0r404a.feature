Feature: Solve the challenge Real level 5
  From www.hackthis.co.uk
  From Lavels Real
  With ny username 3Rr0r404a

  Scenario: Long successful solution
    Given a weg page
    When I looking for a some kind of injection
      And I find file_get_contents error
      And I search in google about file_get_contents function
      And I load the admin.php using the found vulnerability
      And I see the source code looking for important information
      And I found the password required
    Then  I solve the challenge
