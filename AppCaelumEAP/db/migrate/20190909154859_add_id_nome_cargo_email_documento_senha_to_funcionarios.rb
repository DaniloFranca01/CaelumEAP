class AddIdNomeCargoEmailDocumentoSenhaToFuncionarios < ActiveRecord::Migration[5.2]
  def change
    add_column :funcionarios, :id, :integer
    add_column :funcionarios, :nome, :string
    add_column :funcionarios, :cargo, :string
    add_column :funcionarios, :email, :string
    add_column :funcionarios, :documento, :integer
    add_column :funcionarios, :senha, :string
  end
end
