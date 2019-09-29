class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios, :id => false do |t|
      t.string :id
      t.string :nome
      t.string :cargo
      t.string :email
      t.integer :documento
      t.string :senha

      t.timestamps
    end
  end
end
