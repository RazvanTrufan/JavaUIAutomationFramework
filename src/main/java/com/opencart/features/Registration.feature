Feature: Register Flow Feature Test Suite

  Scenario: Access the Account Page after successfull registration
    Given Home Page is accessed
    And RegisterPage is accessed from HomePage menu
    When The registration form is completed with valid random data
    And The privacyToggle is enabled
    And continueButton is clicked
    Then The new page URL contains "=account/success&l" keyword

    Scenario: User remains on Register Page when continue button is not clicked during the register flow
      Given Home Page is accessed
      And RegisterPage is accessed from HomePage menu
      When The registration form is completed with valid random data
      And The privacyToggle is enabled
      Then The new page URL contains "route=account/register&language=en-gb" keyword