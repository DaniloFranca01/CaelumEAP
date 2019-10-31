Feature: Cadastro Usuário
  Como um Profissional de saúde
  Eu quero me cadastrar no site
  Para que eu possa salvar utilizar das ferramentas de acompanhamento de pacientes

Scenario: Sucessful creating a user
  Given I am on the index page
  When I click on the 'sign_up' link
  And I put 'gstadtler@gmail.com' on 'user_email' field
  And I put '123456' on the 'password' field
  And I put '123456' at the 'password_confirmation' field
	And I put 'Gabriel' in the 'nome' field
	And I put '112233' at 'documento' field
  And click on the 'Sign Up' button
  Then I should see the text 'Welcome! You have signed up successfully.'

Scenario: creating a user without email
  Given I am on the index page
  When I click on the 'sign_up' link
  And I put '' on 'user_email' field
  And I put '123456' on the 'password' field
  And I put '123456' at the 'password_confirmation' field
	And I put 'Gabriel' in the 'nome' field
	And I put '112233' at 'documento' field
  And click on the 'Sign Up' button
  Then I should see the text '1 error prohibited this user from being saved.'

Scenario: creating a user that passwords do not match
  Given I am on the index page
  When I click on the 'sign_up' link
  And I put 'gstadtler@gmail.com' on 'user_email' field
  And I put '123456' on the 'password' field
  And I put '654321' at the 'password_confirmation' field
	And I put 'Gabriel' in the 'nome' field
	And I put '112233' at 'documento' field
  And click on the 'Sign Up' button
  Then I should see the text '1 error prohibited this user from being saved.'