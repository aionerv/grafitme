Feature: Los visitantes pueden registrarse al sitio como diseñadores.

  Para poder usar el sitio como diseñador
  y poder subir mis diseños
  debo ser capaz de registrarme

  Scenario: Llegar al formulario de registro a través del Home
    Given I am on the homepage
    When I follow "Regístrate"
    Then I should be on the register page
    And I should see "Ingresa tus datos"

  Scenario: Ingresar datos correctos en el formulario de registro
    Given I am on the register page
    When I fill the register form with valid user data
    And I press "Enviar"
    Then I should be on the email confirmation page
    And I should see "Revisa tu correo electrónico"
 
  Scenario: Ingresar datos incorrectos en el formulario de registro
    Given I am on the register page
    When I fill the register form with invalid user data
    And I press "Enviar"
    Then I should be on the register page
    And I should see "Datos incorrectos"
