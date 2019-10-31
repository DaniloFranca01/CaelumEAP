Feature: Login de Usuário
  Como um usuário
  Eu quero logar na minha conta 
  Para que eu possa ter acesso a minha conta

Scenario: Sucessful user login
  Given I am on the index page
  When I put 'gstadtler@gmail.com' on the 'email' field
  And I put '123456' at 'password' field
  And I click the 'Log in' button
  Then I should see 'Bem-Vindo ao CaelumEAP'
  
Scenario: User unregistered
  Given I am on the index page
  When I put 'g2@gmail.com' on the 'email' field
  And I put '123456' at 'password' field
  And I click the 'Log in' button
  Then I should see the text 'User unregistered.' 

Scenario: user login without email
  Given I am on the index page
  When I put '' on the 'email' field
  And I put '123456' at 'password' field
  And I click the 'Log in' button
  Then I should see the text 'Invalid Email or password.'


Scenario: user login without password
  Given I am on the index page
  When I put 'gstadtler@gmail.com' on the 'email' field
  And I put '' at 'password' field
  And I click the 'Log in' button
  Then I should see the text 'Invalid Email or password.'