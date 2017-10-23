class RemoveCategoryFromGifts < ActiveRecord::Migration[5.1]
  def change
    remove_column :gifts, :category, :string
  end
end
