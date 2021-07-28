require 'open-uri'

# Seeding Lists -------------

List.create(name: 'Drama')
List.create(name: 'Comedy')
List.create(name: 'Classic')
List.create(name: 'Horror')
List.create(name: 'Thriller')
List.create(name: 'To rewatch')

# Seeding Movies ------------------------------

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)
count = 0

20.times do
  Movie.create!(title: movie['results'][count]['title'], overview: movie['results'][count]['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{movie['results'][count]['poster_path']}", rating: movie['results'][count]['vote_average'])
  count += 1
end
