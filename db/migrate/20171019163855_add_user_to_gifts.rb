class AddUserToGifts < ActiveRecord::Migration[5.1]
  def change
    add_reference :gifts, :user, foreign_key: true
  end
end
