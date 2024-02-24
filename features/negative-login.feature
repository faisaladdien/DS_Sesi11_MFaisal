@digital-skola @login
Feature: Swag Labs - Login

  @negative
  Scenario Outline: As a "locked_out_user", I should get error massage

    Given I am on the login page
    When I login with "locked_out_user" credential
    Then I should see error "Epic sadface: Sorry, this user has been locked out."