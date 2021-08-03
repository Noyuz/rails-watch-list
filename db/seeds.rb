require 'open-uri'

# Seeding Lists -------------
drama = List.create(name: 'Drama')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628016936/1k93s7iaj4irgza8ig2gcxr5mo1x.jpg')
drama.photo.attach(io: file, filename: 'drame.jpg')
comedy = List.create(name: 'Comedy')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017044/tf92ogu430zoybpporw8ocqz6e98.jpg')
comedy.photo.attach(io: file, filename: 'comedy.jpg')
classic = List.create(name: 'Classic')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017119/w4bzupkoj9fb0jj588q3fa9wgq06.jpg')
classic.photo.attach(io: file, filename: 'classic.jpg')
horror = List.create(name: 'Horror')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017186/q8kwsbzgz6asvnej73kw7hv4y87h.jpg')
horro.photo.attach(io: file, filename: 'horror.jpg')
thriller = List.create(name: 'Thriller')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017243/ijk2ww9v6tsp5cjjwmhvcensjkxa.jpg')
thriller.photo.attach(io: file, filename: 'thriller.jpg')
torewatch = List.create(name: 'To rewatch')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017343/qgpathiab7kp4t6gwgm3qfn1wsps.jpg')
torewatch.photo.attach(io: file, filename: 'torewatch.jpg')
action = List.create(name: 'Action')
file = URI.open('https://res.cloudinary.com/dmlvtscck/image/upload/v1628017402/6ezg6y8upgz6t75maapwxu11he2c.jpg')
action.photo.attach(io: file, filename: 'action.jpg')

# Seeding Movies ------------------------------

url = 'http://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)
count = 0

20.times do
  Movie.create!(title: movie['results'][count]['title'], overview: movie['results'][count]['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{movie['results'][count]['poster_path']}", rating: movie['results'][count]['vote_average'])
  count += 1
end
