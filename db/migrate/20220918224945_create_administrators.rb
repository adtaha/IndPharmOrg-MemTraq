class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.integer :adminID
      t.string :name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
