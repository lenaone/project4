# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  do testing with reviews
# => rails db:seeds then make 10times of random ratings of comments 
user = User.first
movie = Movie.first

10.times do

  Review.create ratings: rand(1..5), comment: "it's great", user_id: user.id, movie_id: movie.id

end