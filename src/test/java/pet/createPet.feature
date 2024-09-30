Feature: Crear mascotas

@create
  Scenario: Crear nueva mascota en la tienda
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet'
    * configure headers = { Accept : 'application/json', Content-Type: 'application/json' }
    * def pet = '{"id": 0,"category": {"id": 0, "name": "string"},"name": "doggie", "photoUrls": ["string"], "tags": [{"id": 0,"name": "string"}],"status": "available"}'
    And request pet
    When method post
    Then status 200
    * def petID = $.id
    * print petID


