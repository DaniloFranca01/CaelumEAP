class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.string :cpf
      t.string :nome
      t.integer :idade
      t.string :genero
      t.string :hip_diag

      t.timestamps
    end
  end
end
