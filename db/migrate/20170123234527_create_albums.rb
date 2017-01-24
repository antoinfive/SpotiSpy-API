class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :spotify_id
      t.string :spotify_url
      t.string :release_date
      t.string :image_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
