class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.integer :organizationID
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
