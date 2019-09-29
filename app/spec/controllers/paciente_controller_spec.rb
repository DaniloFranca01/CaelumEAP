require 'rails_helper'
require 'paciente'

RSpec.describe PacienteController, type: :controller do
    it 'should be define' do
        expect { Paciente }.not_to raise_error
    end
    
    describe 'constructor' do
        it 'should reject invalid cpf' do
            expect { Paciente.new('','name',20,'male','in coma') }.to raise_error(ArgumentError)
        end
        it 'should reject invalid name' do
            expect { Paciente.new('000.000.000-00','',20,'male','in coma') }.to raise_error(ArgumentError)
        end
        it 'has a age' do
            expect(Paciente.age).to be_a_kind_of(Integer)
            expect(Paciente.age).to be > 0
        end
        it 'has a gender' do
            expect(Paciente.gender).to be_a_kind_of(String)
        end
        it 'has a diagnostic' do
            expect(Paciente.diagnostic_hypothesis).to be_a_kind_of(String)
            expect(Paciente.diagnostic_hypothesis).to be_an(Paciente.diagnostics)
        end
    end

    describe 'getters and setters' do
    before(:each)  { @paciente = Paciente.new('000.000.000-00','name',20,'male','in coma') }
        it 'should set cpf' do
            expect(@paciente.cpf).to eq('000.000.000-00')
        end
        it 'should set name' do
            expect(@paciente.name).to eq('name')
        end
        it 'should be able to change cpf' do
            @paciente.cpf = '111.111.111-11'
            expect(@paciente.cpf).to eq('111.111.111-11')
        end
        it 'should be able to change name' do
            @paciente.name = 'newname'
            expect(@paciente.name).to eq('newname')
        end
    end

    describe '#list_pacientes' do
        it 'should be define' do
            #expect {}.to  
        end
        it 'should display pacientes in list' do
            #expect(Paciente.list_pacientes).to 
        end
    end

    describe '#remove_paciente' do
        it 'should be define' do
            #expect {}.to  
        end
    end

    describe '#show_statistics' do
        it 'should be define' do
            #expect {}.to  
        end
    end

end