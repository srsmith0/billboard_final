
# create_table "artists", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "billboards", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "rankings", force: :cascade do |t|
#   t.integer "rank"
#   t.bigint "song_id", null: false
#   t.bigint "billboard_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["billboard_id"], name: "index_rankings_on_billboard_id"
#   t.index ["song_id"], name: "index_rankings_on_song_id"
# end

# create_table "songs", force: :cascade do |t|
#   t.string "title"
#   t.bigint "artist_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["artist_id"], name: "index_songs_on_artist_id"

fake_songs = 20

billboards = ['Top Hits', 'Hits of Yesterday', 'Up and Coming', 'Indie All the Time']

billboards.each do |chart|
  Billboard.create(name: chart)
end

fake_songs.times do |make|
  artist = Artist.create(name: Faker::Hipster.sentence(word_count: 2))
  song = Song.create(title: Faker::Beer.style, artist_id: artist.id)
  Ranking.create(rank: make % (fake_songs/billboards.size) + 1, billboard_id: (make % billboards.size) + 1, song_id: song.id)
end

puts "seeded!"





