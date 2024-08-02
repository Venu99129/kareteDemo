Feature: create token

  Scenario: verify user can create token scenario
    Given url host
    And path "/auth"
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    * def body = read("classpath://json//create_token.json")
    And request body
    When method post
    Then status 200
    And print response