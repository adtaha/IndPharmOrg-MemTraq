class CreateCurrentMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :current_members do |t|
      t.string :memberID
      t.string :name
      t.string :email, null: false
      t.boolean :isAdmin
      t.boolean :isAlumni
      t.string :avatar_url
      t.string :uid
      
      t.timestamps null: false
    end

    add_index :current_members, :email, unique: true
  end
end