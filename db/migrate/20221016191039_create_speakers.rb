class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.integer :speakerID
      t.string :speakerName
      t.string :speakerEmail
      t.date :dateSpoke
      t.string :organizationName
      t.string :speakerWebsite

      t.timestamps
    end
  end
end
