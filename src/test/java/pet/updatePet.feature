Feature: Actualizar mascotas

@update
  Scenario: Actualizar el nombre de la mascota
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet'
    * configure headers = { Accept : 'application/json', Content-Type: 'application/json' }
  * def update_pet = `{"id": ${petID},"category": {"id": 0, "name": "string"},"name": "doggie", "photoUrls": ["string"], "tags": [{"id": 0,"name": "string"}],"status": "${status}"}`
  And request update_pet
    When method put
    Then status 200
    * print response


