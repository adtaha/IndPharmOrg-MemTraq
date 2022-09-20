class CreateAlumnis < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnis do |t|
      t.integer :alumniID
      t.string :name
      t.string :email
      t.integer :organizationID

      t.timestamps
    end
  end
end
