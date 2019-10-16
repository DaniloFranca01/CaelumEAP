# frozen_string_literal: true

# features/login_user.feature

Given('I am on the index page') do
    visit('/')
end
  
When('I put {string} on the {string} field') do |string1, texto|
    fill_in('user_' + texto, with: string1)
end
  
When('I put {string} at {string} field') do |string2, texto|
    fill_in('user_' + texto, with: string2)
end
  
When('I click the {string} button') do |texto|
    click_button(texto)
end
  
Then('I should see {string}') do |texto|
    page.has_content?(texto)
end