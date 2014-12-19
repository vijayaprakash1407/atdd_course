Feature: Use a customer matcher
  In order to more precisely determine my error message occurred
  As a tester
  I want to use a custom matcher and ensure the message is in the errors section of the page

  Scenario: Use a custom matcher for error message
    Given I am shopping for puppies
    When I try to checkout without a name
    Then I should see the error message "Name can't be blank"