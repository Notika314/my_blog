natalia = User.create(name: "Natalia", email: "natalia@gmail.com", password: "1234")

morad = User.create(name: "Morad", email: "morad@gmail.com", password: "1234")

my_post = Post.create(title: "natalia's post", body: "don't forget to call Morad, and book room for Saturday", user_id: 1)

morads_post = Post.create(title: "morad's first post", body: "take cats to veterinarian, buy present for Niah and Natalia", user_id: 2)

first_comment = Comment.create(user_id: 1, post_id: 2, body: "great remembering about presents")
