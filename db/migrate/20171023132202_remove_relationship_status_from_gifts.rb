class RemoveRelationshipStatusFromGifts < ActiveRecord::Migration[5.1]
  def change
    remove_column :gifts, :relationship_status, :string
  end
end
