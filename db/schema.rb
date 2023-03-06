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

ActiveRecord::Schema[7.0].define(version: 2023_03_06_200735) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.string "district"
    t.string "street"
    t.integer "house_number"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.bigint "inventory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_carts_on_inventory_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_categories_on_product_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id", null: false
    t.index ["address_id"], name: "index_inventories_on_address_id"
    t.index ["order_id"], name: "index_inventories_on_order_id"
    t.index ["product_id"], name: "index_inventories_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "buy_date"
    t.date "confirmation_date"
    t.boolean "delivered"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventory_id", null: false
    t.index ["inventory_id"], name: "index_orders_on_inventory_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.float "price"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventory_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["inventory_id"], name: "index_products_on_inventory_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cart_id", null: false
    t.bigint "order_id", null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["cart_id"], name: "index_users_on_cart_id"
    t.index ["order_id"], name: "index_users_on_order_id"
  end

  add_foreign_key "carts", "inventories"
  add_foreign_key "carts", "users"
  add_foreign_key "categories", "products"
  add_foreign_key "inventories", "addresses"
  add_foreign_key "inventories", "orders"
  add_foreign_key "inventories", "products"
  add_foreign_key "orders", "inventories"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "inventories"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "carts"
  add_foreign_key "users", "orders"
end
