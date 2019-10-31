class CreateResposta < ActiveRecord::Migration[5.2]
  def change
    create_table :resposta do |t|

      t.timestamps
    end
  end
end
