Feature: Los visitantes pueden registrarse al sitio como diseñadores.

  Para poder usar el sitio como diseñador
  y poder subir mis diseños
  debo ser capaz de registrarme

  Scenario: Llegar al formulario de registro a través del Home
    Given I am on the homepage
    When I follow "Regístrate"
    Then I should be on the register page
    And I should see "Ingresa tus datos"