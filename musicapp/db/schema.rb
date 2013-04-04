# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404171028) do

  create_table "artists", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "artists", ["first_name", "last_name"], :name => "index_artists_on_first_name_and_last_name"

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "bands", ["name"], :name => "index_bands_on_name"

  create_table "collaborations", :force => true do |t|
    t.integer  "band_id"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "collaborations", ["artist_id"], :name => "index_collaborations_on_artist_id"
  add_index "collaborations", ["band_id"], :name => "index_collaborations_on_band_id"

  create_table "recordings", :force => true do |t|
    t.string   "name"
    t.integer  "single_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "recordings", ["name"], :name => "index_recordings_on_name"

  create_table "singles", :force => true do |t|
    t.string   "name"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "singles", ["name"], :name => "index_singles_on_name"

end
