# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "baroque")
Category.create(name: "classical")
Category.create(name: "romantic")
Category.create(name: "modern")

Composer.create(name: "philip glass", 
                description: "Through his operas, his symphonies, his compositions for his own ensemble, and his wide-ranging collaborations with artists ranging from Twyla Tharp to Allen Ginsberg, Leonard Cohen to David Bowie, Philip Glass has had an extraordinary and unprecedented impact upon the musical and intellectual life of his times.",
                image_src: "https://s3.amazonaws.com/static.musicsalesclassical.com/images/composer/newsite/large/img-540.jpg",
                category_id: 4)

            