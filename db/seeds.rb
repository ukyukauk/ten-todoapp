# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

yuka = User.create!(email: 'yuka@sample.com', password: '111111')
john = User.create!(email: 'john@sample.com', password: 'password')
emily = User.create!(email: 'emily@sample.com', password: 'password')

# boards
2.times do
  yuka.boards.create!(
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10)
  )
end

2.times do
  john.boards.create!(
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10)
  )
end

2.times do
  emily.boards.create!(
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10)
  )
end

# tasks
10.times do
  yuka.tasks.create!(
    board: Board.all.sample,
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10),
    deadline: Time.zone.local(2025, 5, 1, 15, 30)
  )
end

10.times do
  john.tasks.create!(
    board: Board.all.sample,
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10),
    deadline: Time.zone.local(2025, 6, 1, 15, 30)
  )
end

10.times do
  emily.tasks.create!(
    board: Board.all.sample,
    name: Faker::Lorem.sentence(word_count: 5),
    description: Faker::Lorem.sentence(word_count: 10),
    deadline: Time.zone.local(2025, 7, 1, 15, 30)
  )
end

# comments
20.times do
  yuka.comments.create!(
    task: Task.all.sample,
    content: Faker::Lorem.sentence(word_count: 10)
  )
end

20.times do
  john.comments.create!(
    task: Task.all.sample,
    content: Faker::Lorem.sentence(word_count: 20)
  )
end

20.times do
  emily.comments.create!(
    task: Task.all.sample,
    content: Faker::Lorem.sentence(word_count: 30)
  )
end
