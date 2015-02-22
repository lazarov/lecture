# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

formats = %w(Beta VHS IMAX HD SuperHD 4K DVD Blueray)
images = %w(fightclub.jpg matrix.jpg rambo.jpg)

#Movie.destroy_all

20.times do

  movie = Movie.create( name: "#{Company.bs}",
                    director: "#{Name.name}",
                 description: Lorem.paragraphs.join,
                        year: rand(1940..2014),
                      length: rand(60..120),
                      format: formats[rand(formats.length)],
                       image: "movies/" + images[rand(images.length)],
                   thumbnail: "movies/" + images[rand(images.length)])

  puts movie.inspect

end
