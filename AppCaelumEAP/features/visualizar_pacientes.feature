Feature: Vizualizar Pacientes
    Como um funcionario
    Eu quero vizualizar os pacientes cadastrados
    Para que eu possa visualizar as suas informacoes

Scenario: Successful pacients vizualisation 
    Given I am on the home page
    When I click on the 'Mostrar Pacientes' link
    Then I will be redirected to the 'pacientes' page
