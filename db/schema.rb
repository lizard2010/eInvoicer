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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150204135501) do

  create_table "activities", force: :cascade do |t|
    t.string  "name",           limit: 500
    t.integer "work"
    t.integer "activity_order"
    t.integer "deleted"
    t.integer "category_id"
    t.string  "search_name"
  end

  create_table "categories", force: :cascade do |t|
    t.string  "name",           limit: 500
    t.string  "color_code",     limit: 50
    t.integer "category_order"
    t.string  "search_name"
  end

  create_table "ei_fact_invoices", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "fact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ei_fact_invoices", ["fact_id"], name: "index_ei_fact_invoices_on_fact_id"
  add_index "ei_fact_invoices", ["invoice_id"], name: "index_ei_fact_invoices_on_invoice_id"

  create_table "ei_invoices", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "status"
    t.datetime "sent_time"
    t.datetime "payed_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ei_invoices", ["client_id"], name: "index_ei_invoices_on_client_id"

# Could not dump table "fact_index" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "fact_index_content" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "fact_index_segdir", primary_key: "level", force: :cascade do |t|
    t.integer "idx"
    t.integer "start_block"
    t.integer "leaves_end_block"
    t.integer "end_block"
    t.binary  "root"
  end

  add_index "fact_index_segdir", ["level", "idx"], name: "sqlite_autoindex_fact_index_segdir_1", unique: true

  create_table "fact_index_segments", primary_key: "blockid", force: :cascade do |t|
    t.binary "block"
  end

  create_table "fact_tags", id: false, force: :cascade do |t|
    t.integer "fact_id"
    t.integer "tag_id"
  end

  add_index "fact_tags", ["fact_id"], name: "idx_fact_tags_fact"
  add_index "fact_tags", ["tag_id"], name: "idx_fact_tags_tag"

  create_table "facts", force: :cascade do |t|
    t.integer  "activity_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "description"
  end

# Could not dump table "l1_clientinfo" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "l1_fact_invoices", id: false, force: :cascade do |t|
    t.integer "invoice_id"
    t.integer "fact_id"
  end

  create_table "l1_invoices", force: :cascade do |t|
    t.integer  "client"
    t.integer  "status"
    t.datetime "create_dtime"
    t.datetime "sent_dtime"
    t.datetime "payed_dtime"
  end

# Could not dump table "sqlite_stat1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "tags" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "version", id: false, force: :cascade do |t|
    t.integer "version"
  end

end
