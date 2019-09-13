class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|

      t.timestamps
    end
  end
end
