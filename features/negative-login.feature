@digital-skola @login
Feature: Swag Labs - Login
  Background: User on the login page
    Given I am on the login page

  @negative
  Scenario Outline: As a "locked_out_user", I cannot log in into the home page and see message error
    When I login with "locked_out_user" credential
    Then I should see error "Epic sadface: Sorry, this user has been locked out." 

  Scenario Outline: As a "another_user", I cannot log in into the home page and see message error
    When I login with "another_user" credential
    Then I should see error "Epic sadface: Username and password do not match any user in this service"
  
  Scenario Outline: As a "" blank user, I cannot log in into the home page and see message error
    When I login with "" credential
    Then I should see error "Epic sadface: Username is required"

  Scenario Outline: As a "standard_user" but the password is blank, I cannot log in into the home page and see message error
    When I login with "standard_user" credential and blank password
    Then I should see error "Epic sadface: Password is required"