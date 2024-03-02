@digital-skola @login
Feature: Swag Labs - Login
Background: User on the login page
    Given I am on the login page

  @positive
  Scenario Outline: As a "standard_user", I want to log in successfully
    When I login with "standard_user" credential
    Then I should see home page

  Scenario Outline: As a "problem_user", I want to log in successfully
    When I login with "problem_user" credential
    Then I should see home page

  Scenario Outline: As a "performance_glitch_user", I want to log in successfully
    When I login with "performance_glitch_user" credential
    Then I should see home page
  
  Scenario Outline: As a "error_user", I want to log in successfully
    When I login with "error_user" credential
    Then I should see home page

  Scenario Outline: As a "visual_user", I want to log in successfully
    When I login with "visual_user" credential
    Then I should see home page