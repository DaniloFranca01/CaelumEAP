class Paciente < ApplicationRecord
    validates :cpf, presence: {message: 'Invalid: Field can not be empty.'} 
        #length: {is: 11, message: 'Invalid: Must be only 11 digits'}, 
        #uniqueness: {message: 'Invalid: Cpf already exists'}

    validates :nome, presence: {message: 'Invalid: Field can not be empty.'}
    belongs_to :user
end
