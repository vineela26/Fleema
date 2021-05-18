# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_18_174547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "car_specification", id: false, force: :cascade do |t|
    t.text "'id_car_specification'"
    t.text "'name'"
    t.text "'id_parent'"
    t.text "'date_create'"
    t.text "'date_update'"
    t.text "'id_car_type'"
  end

  create_table "car_specification_value", id: false, force: :cascade do |t|
    t.text "'id_car_specification_value'"
    t.text "'id_car_trim'"
    t.text "'id_car_specification'"
    t.text "'value'"
    t.text "'unit'"
    t.text "'date_create'"
    t.text "'date_update'"
    t.text "'id_car_type'"
  end

  create_table "car_trim", id: false, force: :cascade do |t|
    t.text "'id_car_trim'"
    t.text "'id_car_serie'"
    t.text "'id_car_model'"
    t.text "'name'"
    t.text "'start_production_year'"
    t.text "'end_production_year'"
    t.text "'date_create'"
    t.text "'date_update'"
    t.text "'id_car_type'"
  end

  create_table "car_type", id: false, force: :cascade do |t|
    t.text "'id_car_type'"
    t.text "'name'"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "category"
    t.string "bhp"
    t.datetime "first_registration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "car_model_name"
    t.decimal "gross_price"
    t.integer "mileage"
    t.string "generation"
    t.string "trim"
    t.string "serie"
    t.text "option"
    t.text "specifications"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "postcode"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
