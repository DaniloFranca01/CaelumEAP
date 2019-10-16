# frozen_string_literal: true

# features/visualizar_pacientes.feature

Given('I am on the home page') do
  visit('/')
  User.create(nome: 'userTest', cargo: 'medico', documento: '112233', email: 'user@test.com', password: '123456')
  fill_in('user_email', with: 'user@test.com')
  fill_in('user_password', with:'123456')
  click_button('Log in')
end

Then('I will be redirected to the {string} page') do |texto|
  visit(texto)
end
