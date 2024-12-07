Feature: Crear una nueva mascota en la tienda

  Background:
    * url 'https://petstore.swagger.io/v2/pet'

  Scenario: Crear una nueva mascota
    Given header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request {"id": 0,"category": {"id": 0,"name": "string"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method POST
    Then status 200
    * karate.set('createdId', response.id)
    * print 'ID de la mascota creada:', createdId