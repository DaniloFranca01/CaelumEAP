Feature: Cadastro de Pacientes
    Como um funcionario
    Eu quero cadastrar um paciente
    Para que eu possa acompanhar os estados e estatísticas de seu tratamento

Scenario: Successful register of pacient
    Given I am at the index page
    When I click on 'Mostrar Pacientes' link
    And I click on the 'New Paciente' link
    And I fill 'cpf' with '12345678910'
    And I fill 'nome' with 'Nome do Paciente'
    And I fill 'idade' with '42'
    And I fill 'genero' with 'Feminino'
    And I fill 'hip_diag' with 'Suspeitas de cancer de mama'
    And I click on the 'Create Paciente' button
    Then I should see the text 'Paciente was successfully created.'

Scenario: Patient register without Cpf
    Given I am at the index page
    When I click on 'Mostrar Pacientes' link
    And I click on the 'New Paciente' link
    And I fill 'cpf' with ''
    And I fill 'nome' with 'Nome do Paciente'
    And I fill 'idade' with '42'
    And I fill 'genero' with 'Feminino'
    And I fill 'hip_diag' with 'Suspeitas de cancer de mama'
    And I click on the 'Create Paciente' button
    Then I should see the text 'Invalid: Field can not be empty.'

Scenario: Patient register without Nome
    Given I am at the index page
    When I click on 'Mostrar Pacientes' link
    And I click on the 'New Paciente' link
    And I fill 'cpf' with '12345678910'
    And I fill 'nome' with ''
    And I fill 'idade' with '42'
    And I fill 'genero' with 'Feminino'
    And I fill 'hip_diag' with 'Suspeitas de cancer de mama'
    And I click on the 'Create Paciente' button
    Then I should see the text 'Invalid: Field can not be empty.'