Feature: Pruebas completas de mascotas

  Scenario: Crear y obtener información de una mascota
    * def result = call read('create-pet.feature')
    * def createdId = result.createdId
    * print 'ID de la mascota creada:', createdId
    Given url 'https://petstore.swagger.io/v2/pet/' + createdId
    And headers Accept = 'application/json'
    When method GET
    Then status 200
    * print 'Información de la mascota:', response
