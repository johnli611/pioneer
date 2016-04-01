class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :cover_photo_url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :albums, [:user_id, :created_at]
  end
end
