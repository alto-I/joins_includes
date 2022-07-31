# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "seedデータ作成開始"

10.times do |n|
  user = User.create!(
    name: "user#{n}",
    email: "user#{n}@example.com"
  )

  10.times do |m|
    post = Post.create!(
      title: "title#{m} by user#{n}",
      description: "description#{m}",
      user_id: user.id
    )

    10.times do |l|
      Comment.create!(
        text: "comment#{l} of post#{m} by user#{n}",
        post_id: post.id
      )
    end
  end
end

p "seedデータ作成終了"
