@digital-skola @login
Feature: Swag Labs - Login

  @positive
  Scenario Outline: As a "standard_user", I want to log in successfully

    Given I am on the login page
    When I login with "standard_user" credential
    Then I should see home page