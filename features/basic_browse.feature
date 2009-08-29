Feature: See a cd

  So that I can see an old cd
  As a web user
  I want to browse a single cd by _id
  Scenario: View Cd
    Given a "The Rhythm Method" cd
    When I view the cd _id
    Then the title should include "The Rhythm Method"
