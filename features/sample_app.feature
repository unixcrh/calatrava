Feature: Sample App

  In order to get started with Calatrava
  As a new calatrava user
  I want a new Calatrava project to contain a working sample app

  Scenario: Create a sample project
    When I create an app named "sample"
    And  I cd to "sample"
    And  I run `bundle install`
    And  I run `rake bootstrap`
    Then the exit status should be 0

  Scenario: Sample app kernel
    When I create an app named "sample"
    And  I cd to "sample"
    And  I run `bundle install`
    And  I run `rake bootstrap`
    And  I run `rake kernel:spec`
    Then the exit status should be 0

  Scenario: Mobile web sample app
    When I create an app named "sample"
    And  I cd to "sample"
    And  I run `bundle install`
    And  I run `rake bootstrap`
    And  I start apache
