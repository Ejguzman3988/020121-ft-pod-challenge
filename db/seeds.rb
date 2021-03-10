# create_table "children", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "age"
#     t.integer "parent_id"
#     t.index ["parent_id"], name: "index_children_on_parent_id"
#   end

#   create_table "parents", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "age"
#   end
amount_c = [0,1,2]
30.times do
    Parent.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: (18..100).to_a.sample)
    amount_c.sample.times do
        Child.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: (18..100).to_a.sample, parent_id: Parent.ids.sample)
    end
end