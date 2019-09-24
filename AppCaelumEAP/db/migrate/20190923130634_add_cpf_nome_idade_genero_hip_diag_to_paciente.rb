class AddCpfNomeIdadeGeneroHipDiagToPaciente < ActiveRecord::Migration[5.2]
  def change
    add_column :pacientes, :cpf, :integer
    add_column :pacientes, :nome, :string
    add_column :pacientes, :idade, :integer
    add_column :pacientes, :genero, :string
    add_column :pacientes, :hip_diag, :string
  end
end
