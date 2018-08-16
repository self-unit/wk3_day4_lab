require_relative('models/casting.rb')
require_relative('models/movie.rb')
require_relative('models/star.rb')

require('pry-byebug')

Star.delete_all()
Movie.delete_all()
Casting.delete_all()

star1 = Star.new({'first_name' => 'Keanu', 'last_name' => 'Reeves'})
star1.save()
star2 = Star.new({'first_name' => 'Laurence', 'last_name' => 'Fishbourne'})
star2.save()
star3 = Star.new({'first_name' => 'Carrie', 'last_name' => 'Anne-Moss'})
star3.save()
star4 = Star.new({'first_name' => 'Leonardo', 'last_name' => 'Di Caprio'})
star4.save()
star5 = Star.new({'first_name' => 'Joseph', 'last_name' => 'Gordon-Levitt'})
star5.save()
star6 = Star.new({'first_name' => 'Ellen', 'last_name' => 'Page'})
star6.save()

movie1 = Movie.new({'title' => 'The Matrix', 'genre' => 'Sci-Fi', 'budget' => '46000000'})
movie1.save()
movie2 = Movie.new({'title' => 'Inception', 'genre' => 'Sci-Fi', 'budget' => '160000000'})
movie2.save()

casting1 = Casting.new({'fee' => '15000000', 'movie_id' => movie1.id, 'star_id' => star1.id})
casting1.save()
casting2 = Casting.new({'fee' => '1000000', 'movei_id' => movie1.id, 'star_id' => star2.id})
casting2.save()
casting3 = Casting.new({'fee' => '500000', 'movie_id' => movie1.id, 'star_id' => star3.id})
casting3.save()
casting4 = Casting.new({'fee' => '30000000', 'movie_id' => movie2.id, 'star_id' => star4.id})
casting4.save()
casting5 = Casting.new({'fee' => '4000000', 'movie_id' => movie2.id, 'star_id' => star5.id})
casting5.save()
casting6 = Casting.new({'fee' => '1000000', 'movie_id' => movie2.id, 'star_id' => star6.id})
casting6.save()

binding.pry
nil
