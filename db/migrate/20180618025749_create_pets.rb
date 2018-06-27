class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.decimal :price, :precision => 15, :scale => 10
      t.string :tipo
      t.string :sexo
      t.text :observaciones
      t.string :estado

      t.timestamps
    end
  end
end
