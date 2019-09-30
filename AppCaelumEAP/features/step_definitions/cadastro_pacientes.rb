# frozen_string_literal: true

# features/cadastro_pacientes.feature

Given('I am on the pacientes page') do
  visit('pacientes')
end

When('I click on the {string} link') do |texto|
  click_link(texto)
end

When('I fill {string} with {string}') do |texto, string2|
  fill_in('paciente_' + texto, with: string2)
end

When('I fill {string} with {int}') do |texto, inteiro|
  fill_in('paciente_' + texto, with: inteiro)
end

When('I click on the {string} button') do |texto|
  click_button(texto)
end

Then('I should see the text {string}') do |texto|
  page.has_content?(texto)
end
