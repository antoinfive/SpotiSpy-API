class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :spotify_url
      t.string :spotify_id
      t.integer :duration
      t.integer :disc_number
      t.references :album, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
