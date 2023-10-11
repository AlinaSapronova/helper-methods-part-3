desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  Movie.destroy_all

  20.times do
    movie = Movie.new
    movie.title = Faker::Movie.title
    movie.description = Faker::Movie.quote
    movie.image_url = Faker::Avatar.image
    movie.save
  end

end
