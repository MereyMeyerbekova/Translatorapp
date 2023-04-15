@Login
    Feature: Login as an employer
    As an employer user, I want to login to EMpower

@Valid
    Scenario Outline: Login with a valid credential
    Given I navigate to System application
    When I click login as Translator Or ChiefEditor
    And I enter email <email> and password <password>
    And I click Login button
    Then I should be able to login successfully
    And Close Login page
    Examples:
        email         | password
        mad@gmail.com | Password123