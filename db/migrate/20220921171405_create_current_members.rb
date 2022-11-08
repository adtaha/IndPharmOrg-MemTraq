class CreateCurrentMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :current_members do |t|
      t.string :memberID
      t.string :name
      t.string :email
      t.boolean :isAdmin
      t.boolean :isAlumni
      # t.string :token
      # t.string :refresh_token
      # t.string :oauth_expires_at

      t.timestamps
    end
  end
end
# # ActiveRecord::Migration
# def change
#   add_column :users, google_token, :string
#   add_column :users, google_refresh_token, :string
# end