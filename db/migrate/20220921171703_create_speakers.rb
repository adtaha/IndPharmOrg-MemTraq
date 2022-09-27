class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.integer :speakerID
      t.string :name
      t.string :email
      t.integer :organizationID

      t.timestamps
    end
  end
end
