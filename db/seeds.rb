# ayana = User.create(email: "ayana@ayana.com", name: "Ayana", image_url: "https://avatars1.githubusercontent.com/u/892860?s=460&v=4", bio: "i love art", password: "pw")

# jenn = User.create(email: "jennifer@jennifer.com", name: "Jenn", image_url: "https://avatars0.githubusercontent.com/u/10600568?s=460&v=4", bio: "i love art", password: "pw")

# Post.create(title: "“Heliconia, Crab’s Claw Ginger” (1939)", image_url: "https://static01.nyt.com/images/2018/05/25/arts/25okeeffe1/merlin_138355539_c1e05027-c260-4c88-81c4-5133955a4aba-articleLarge.jpg?quality=75&auto=webp&disable=upscale", description: "A little-known chapter in the career of one of this country’s most famous artists, O’Keeffe’s Hawaiian sojourn takes center stage this spring at the New York Botanical Garden in Georgia O’Keeffe: Visions of Hawai’i.", user_id: jenn.id)

# Post.create(title: "Hibiscus with Plumeria (1939)", image_url: "https://news.artnet.com/app/news-upload/2018/01/NYBG_Georgia_OKeeffe_Hibiscus-761x1024.jpg", description: "A little-known chapter in the career of one of this country’s most famous artists, O’Keeffe’s Hawaiian sojourn takes center stage this spring at the New York Botanical Garden in Georgia O’Keeffe: Visions of Hawai’i.", user_id: jenn.id)

jonathan = User.create(email: "jonathan_koss@yahoo.com", name: "Jonathan", image_url: "https://avatars1.githubusercontent.com/u/892860?s=460&v=4", bio: "i love art", password: "pw")



# create_table "users", force: :cascade do |t|
#     t.string   "name"
#     t.text     "bio"
#     t.string   "image_url"
#     t.string   "email"
#     t.string   "password_digest"
#     t.datetime "created_at",      null: false
#     t.datetime "updated_at",      null: false
#   end