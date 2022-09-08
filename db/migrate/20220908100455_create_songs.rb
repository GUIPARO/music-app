class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :preview_url
      t.integer :album_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
