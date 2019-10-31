class CreateEscalas < ActiveRecord::Migration[5.2]
  def change
    create_table :escalas do |t|

      t.timestamps
    end
  end
end
