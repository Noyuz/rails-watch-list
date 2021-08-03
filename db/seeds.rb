require 'open-uri'

# Seeding Lists -------------
drama = List.create(name: 'Drama', background_image: 'https://images.unsplash.com/photo-1559781728-fed5d011996a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628016936/1k93s7iaj4irgza8ig2gcxr5mo1x.jpg')
drama.photo.attach(io: file, filename: 'drame.jpg')
List.create(name: 'Comedy', background_image: 'https://images.unsplash.com/photo-1612853777170-2c630d988310?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
List.create(name: 'Classic', background_image: 'https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
List.create(name: 'Horror', background_image: 'https://images.unsplash.com/photo-1602737337930-b4f775f99f77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80' )
List.create(name: 'Thriller', background_image: 'https://images.unsplash.com/photo-1532977692289-827d858a170b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1337&q=80')
List.create(name: 'To rewatch', background_image: 'https://images.unsplash.com/photo-1608170825938-a8ea0305d46c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1250&q=80')

# Seeding Movies ------------------------------

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)
count = 0

20.times do
  Movie.create!(title: movie['results'][count]['title'], overview: movie['results'][count]['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{movie['results'][count]['poster_path']}", rating: movie['results'][count]['vote_average'])
  count += 1
end
