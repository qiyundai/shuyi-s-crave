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

ActiveRecord::Schema.define(version: 2021_04_20_172309) do

  create_table "attempts", force: :cascade do |t|
    t.string "status"
    t.integer "user_id", null: false
    t.integer "step_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["step_id"], name: "index_attempts_on_step_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "main_ingredient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "user_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
    t.index ["unit_id"], name: "index_ingredients_on_unit_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_instructions_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "story"
    t.index ["category_id"], name: "index_recipes_on_category_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.text "description"
    t.integer "instruction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instruction_id"], name: "index_steps_on_instruction_id"
  end

  add_foreign_key "attempts", "steps"
  add_foreign_key "attempts", "users"
  add_foreign_key "comments", "recipes"
  add_foreign_key "comments", "users"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "ingredients", "units"
  add_foreign_key "instructions", "recipes"
  add_foreign_key "recipes", "categories"
  add_foreign_key "recipes", "users"
  add_foreign_key "steps", "instructions"
end
