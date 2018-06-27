class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.references :pet, foreign_key: true
      t.string :codigo
      t.string :estado

      t.timestamps
    end
  end
end
