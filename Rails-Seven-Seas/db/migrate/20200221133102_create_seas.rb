class CreateSeas < ActiveRecord::Migration[5.1]
  def change
    create_table :seas do |t|
      t.string  "name"
      t.float   "temperature"
      t.text    "bio"
      t.string  "image_url"
      t.string  "mood"
      t.string  "favorite_color"
      t.string  "scariest_creature"
      t.boolean "has_mermaids",      default: true
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
