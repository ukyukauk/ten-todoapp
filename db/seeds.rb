# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create!(email: 'john@example.com', password: 'password')
emily = User.create!(email: 'emily@example.com', password: 'password')

2.times do  # 10回繰り返す
  john.boards.create(
    user_id: 1,
    name: Faker::Lorem.sentence(word_count: 5),  # ランダムな5単語
    description: Faker::Lorem.sentence(word_count: 100)  # ランダムな100単語
  )
end

2.times do  # 10回繰り返す
  emily.boards.create(
    user_id: 1,
    name: Faker::Lorem.sentence(word_count: 5),  # ランダムな5単語
    description: Faker::Lorem.sentence(word_count: 100)  # ランダムな100単語
  )
end
