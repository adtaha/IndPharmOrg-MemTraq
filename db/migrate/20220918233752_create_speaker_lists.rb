class CreateSpeakerLists < ActiveRecord::Migration[6.1]
  def change
    create_table :speaker_lists do |t|
      t.integer :speakerListID
      t.integer :speakerID

      t.timestamps
    end
  end
end
