class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at
      t.integer :artist_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
