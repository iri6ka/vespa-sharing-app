# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["Model 946", "Cosa", "Elettrica", "ET2", "ET4", "GTL", "GTS", "GTS Super", "GTV", "LS", "LXV", "PK", "Primavera", "PX", "Rally", "S", "Sei Giorni", "Sprint"]
features = ["Color", "Year", "Engine Capacity", "Insurance", "Odometer"]

if Category.count == 0
    categories.each do |category|
        Category.create(name: category)
        puts "created #{category} category"
    end
end

if Feature.count == 0
    features.each do |feature|
        Feature.create(name: feature)
        puts "created #{feature} feature"
    end
end