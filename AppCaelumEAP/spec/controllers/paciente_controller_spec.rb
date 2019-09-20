require 'rails_helper'
require 'spec_helper'
require 'paciente'

RSpec.describe PacienteController, type: :controller do

    describe 'constructor' do
        before(:all) do
            @paciente1 = build(:paciente)
        end
        it 'should reject empty cpf' do
            @paciente2 = build(:paciente, cpf: nil) 
            expect(@paciente2).to_not be_valid
        end
        it 'should reject empty name' do
            @paciente2 = build(:paciente, nome: nil)
            expect(@paciente2).to_not be_valid
        end
        it 'has an age' do
            expect(@paciente1.idade).to be_a_kind_of(Integer)
            expect(@paciente1.idade).to be > 0
        end
        it 'has an gender' do
            expect(@paciente1.genero).to be_a_kind_of(String)
        end
        it 'has an diagnostic' do
            expect(@paciente1.hip_diag).to be_a_kind_of(String)
            #expect(@paciente2.hip_diag).to be_an(Paciente.diagnostics)
        end
    end

    describe 'getters and setters' do
        cpf = FFaker::IdentificationBR.cpf 
        nome = FFaker::Name.name
        idade = FFaker::Random.rand(1..999)
        genero = FFaker::IdentificationBR.gender
        hip_diag = FFaker::Lorem.sentence(word_count = 4)
        
        before(:all) do
        @paciente = build(:paciente, cpf:cpf, nome: nome, idade: idade, genero: genero, hip_diag: hip_diag)
        end
        
        it 'should set cpf' do
            expect(@paciente.cpf).to eq(cpf)
        end
        it 'should set name' do
            expect(@paciente.nome).to eq(nome)
        end
        it 'should be able to change cpf' do
            paciente.cpf = cpf
            expect(@paciente.cpf).to eq(cpf)
        end
        it 'should be able to change name' do
            @paciente.name = nome
            expect(@paciente.nome).to eq(nome)
        end
    end

end