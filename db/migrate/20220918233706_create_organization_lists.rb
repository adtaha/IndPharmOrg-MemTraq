class CreateOrganizationLists < ActiveRecord::Migration[6.1]
  def change
    create_table :organization_lists do |t|
      t.integer :orgListID
      t.integer :orgID

      t.timestamps
    end
  end
end
