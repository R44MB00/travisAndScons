Feature: Solve the challenge Intermediate Level 4
  From www.hackthis.co.uk
  From Lavels Intermediate
  With ny username 3Rr0r404a

  Background:
    Given a xss injection

  Scenario: Successful solution
    Given a text area that filter the tags <script>
      And also filter the close tag </script>
    When I malformed the open tag at this way <<script>script>
      And the close tag at this way <</script>script>
      And the filter remove the script tags
      And the two parts of the injection join
    Then I solve the challenge
