class AddUserToState < ActiveRecord::Migration[5.1]
  def change
    add_reference :states, :user, foreign_key: true
  end
end
