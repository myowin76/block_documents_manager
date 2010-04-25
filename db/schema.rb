# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100328132046) do

  create_table "block_documents", :force => true do |t|
    t.integer  "block_id"
    t.integer  "category_id"
    t.date     "expiry_date"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  add_index "block_documents", ["block_id"], :name => "index_block_documents_on_block_id"
  add_index "block_documents", ["category_id"], :name => "index_block_documents_on_category_id"

  create_table "blocks", :force => true do |t|
    t.string   "name"
    t.string   "postcode"
    t.date     "build_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "description"
    t.boolean  "expiry_date_required"
    t.boolean  "build_date_depended"
    t.date     "before_build_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
