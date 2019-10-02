# frozen_string_literal: true

# features/visualizar_pacientes.feature

Given('I am on the home page') do
  visit('/')
end

Then('I will be redirected to the {string} page') do |texto|
  visit(texto)
end
