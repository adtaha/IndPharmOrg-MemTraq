class CreateMemberLists < ActiveRecord::Migration[6.1]
  def change
    create_table :member_lists do |t|
      t.integer :memberListID
      t.integer :memberID

      t.timestamps
    end
  end
end
