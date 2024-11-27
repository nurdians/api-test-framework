Feature: Test API Endpoints
  Scenario: Get user details
    Given the API endpoint is "https://jsonplaceholder.typicode.com/users/1"
    When I send a GET request
    Then the response status should be 200
    And the response should include "username"