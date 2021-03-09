# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "foods", force: :cascade do |t|
#   t.integer "tracker_id"
#   t.string "name"
#   t.float "calories"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "trackers", force: :cascade do |t|
#   t.string "day"
#   t.date "date"
#   t.float "totalcal"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

tracker = Tracker.create(day: "Monday", date: Date.today, totalcal: 0)

food = Food.create(tracker_id: 1, name: "apple", calories: 50)

food_two = Food.create(tracker_id: 1, name: "pizza", calories: 300)
