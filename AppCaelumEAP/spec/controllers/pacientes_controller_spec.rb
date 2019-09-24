require 'rails_helper'
#require 'spec_helper'

RSpec.describe PacientesController, type: :controller do

    describe 'constructor' do
        before(:all) do
            @paciente1 = build(:paciente)
        end
        it 'is not valid without a cpf' do
            @paciente2 = build(:paciente, cpf: nil) 
            expect(@paciente2).not_to be_valid
        end
        it 'is not valid without a name' do
            @paciente2 = build(:paciente, nome: nil)
            expect(@paciente2).not_to be_valid
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
        end
    end

    describe 'getters and setters' do
        cpf = (FFaker::IdentificationBR.cpf).to_i
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
            novo_cpf = (FFaker::IdentificationBR.cpf).to_i
            @paciente.cpf = novo_cpf
            expect(@paciente.cpf).to eq(novo_cpf)
        end
        it 'should be able to change name' do
            novo_nome = FFaker::Name.name
            @paciente.nome = novo_nome
            expect(@paciente.nome).to eq(novo_nome)
        end
    end

end