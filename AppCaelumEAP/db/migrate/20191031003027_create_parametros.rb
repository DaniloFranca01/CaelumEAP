class CreateParametros < ActiveRecord::Migration[5.2]
  def change
    create_table :parametros do |t|

      t.timestamps
    end
  end
end
