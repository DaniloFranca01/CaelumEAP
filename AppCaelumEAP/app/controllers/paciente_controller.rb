class PacienteController < ApplicationController
=begin
    def initialize(cpf,nome,idade,genero,hip_diag)
      @cpf = cpf
      @nome = nome
      @idade = idade
      @genero = genero
      @hipotese_diagnostica = hip_diag
    end
=end
    def index
        @pacientes = Paciente.all
    end

    def create
        @paciente = Paciente.create(paciente_params)
        redirect_to pacientes_path
    end
    
    private
        def paciente_params
            params.require(:paciente).permit(:cpf, :nome, :idade, :genero, :hip_diag)
        end
end
