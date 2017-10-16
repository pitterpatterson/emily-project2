class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.nvarchar :where_to_find
      t.string :relationship_status

      t.timestamps
    end
  end
end
