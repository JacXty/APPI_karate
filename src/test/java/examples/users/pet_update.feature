Feature: Pruebas Editar una mascota
  Background:
    * def result = call read('create-pet.feature')
    * def createdId = result.createdId
    * print 'ID de la mascota creada:', karate.get('createdId')
  Scenario: Crear y Editar información de una mascota
    Given url 'https://petstore.swagger.io/v2/pet/' + karate.get('createdId')
    And headers Accept = 'application/json'
    And header Content-Type = 'application/x-www-form-urlencoded'
    And request 'status=sold'
    When method POST
    Then status 200
    * print 'Información de la mascota:', response
  Scenario: Consulta de mascota editada de una mascota por el estado
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    And headers Accept = 'application/json'
    When method GET
    Then status 200