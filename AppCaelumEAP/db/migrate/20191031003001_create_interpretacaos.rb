class CreateInterpretacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :interpretacaos do |t|

      t.timestamps
    end
  end
end
