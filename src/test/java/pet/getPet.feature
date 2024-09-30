Feature: Consultar mascotas

@getById
  Scenario: Consultar mascota por id
    Given url 'https://petstore.swagger.io/v2'
    And path `/pet/${petID}`
    When method get
    Then status 200
    And print response

  @getByStatus
  Scenario: Consultar mascota por status
    Given url `https://petstore.swagger.io/v2/pet/findByStatus?status=${status}`
    When method get
    Then status 200
    And print response



