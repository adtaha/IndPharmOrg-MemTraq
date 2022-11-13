class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.integer :speakerID
      t.string :speakerName
      t.string :speakerEmail
      t.string :organizationID
      t.string :speakerWebsite

      t.timestamps
    end
  end
end
