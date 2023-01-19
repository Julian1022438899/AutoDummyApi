Feature: Get user on Dummy api

  Scenario: Get employees
    Given url "https://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200

  Scenario: Get employees by id
    Given url "https://dummy.restapiexample.com/api/v1/employee/1"
    When method get
    Then status 200

  Scenario: Post a employees
    Given url "https://dummy.restapiexample.com/api/v1/create"
    And request {"name":"julian", "salary":"45000", "age":"24"}
    When method post
    Then status 200

  Scenario: Put an employee
    Given url "https://dummy.restapiexample.com/public/api/v1/update/21"
    And request {"name":"julian", "salary":"45000","age":"24"}
    When method put
    Then status 200

  Scenario: Delete a employee
    Given url "https://dummy.restapiexample.com/public/api/v1/delete/2"
    When method delete
    Then status 200
