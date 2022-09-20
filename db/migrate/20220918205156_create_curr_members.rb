class CreateCurrMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :curr_members do |t|
      t.integer :studentID
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
