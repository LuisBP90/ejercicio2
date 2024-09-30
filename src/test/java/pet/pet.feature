Feature: Pruebas API sitio petstore

  Background:
    * url 'https://petstore.swagger.io/v2'
    * configure headers = { Accept : 'application/json', Content-Type: 'application/json' }

  Scenario: Crear, consultar, actualizar la mascota ingresada
    #Crear
    * call read('createPet.feature@create')
    * def json = {petID:#(petID),status:'hold'}
    #Consultar por id
    * call read('getPet.feature@getById') json
    #Actualizar
    * call read('updatePet.feature@update') json
    #Consultar por status
    * call read('getPet.feature@getByStatus') json





