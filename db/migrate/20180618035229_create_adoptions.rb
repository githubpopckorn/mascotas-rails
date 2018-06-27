class CreateAdoptions < ActiveRecord::Migration[5.1]
  def change
    create_table :adoptions do |t|
      t.references :pet, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
