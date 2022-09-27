class CreateCurrentMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :current_members do |t|
      t.integer :memberID
      t.string :name
      t.string :email
      t.boolean :isAdmin
      t.boolean :isAlumni

      t.timestamps
    end
  end
end
