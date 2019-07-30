require "ffaker"

User.create!(user_name: "Duong Thanh Hoa",
             email: "tahado98@gmail.com",
             password: "hoadt98",
             password_confirmation: "hoadt98",
             created_at: Time.zone.now)

10.times do
  name  = FFaker::Book.author
  intro = FFaker::Book.description
  Author.create!(author_name: name,
                intro: intro)
end

4.times do
  name  = FFaker::Book.genre
  Category.create!(category_name: name)
end

4.times do
  name  = FFaker::Company.name
  Publishhouse.create!(publishhouse_name: name)
end

10.times do
  name  = FFaker::Book.title
  cover = "/assets/#{rand (1..2)}.jpg"
  description = FFaker::Book.description
  category_id = rand(1..4)
  author_id = rand(1..10)
  publishhouse_id = rand (1..4)
  Book.create!(book_name: name,
              description: description,
              cover: cover,
              category_id: category_id,
              author_id: author_id,
              publishhouse_id: publishhouse_id,
              created_at: Time.zone.now)
end
