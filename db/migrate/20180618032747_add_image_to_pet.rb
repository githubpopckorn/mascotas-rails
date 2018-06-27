class AddImageToPet < ActiveRecord::Migration[5.1]
  def change

    add_attachment :pets, :image
  end
end
