# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './fridge_data.rb'

Fridge.destroy_all

fridge_data = get_fridge_data()

kitchen = Fridge.create(location: "kitchen", brand: "GE", size: 27)
basement = Fridge.create(location: "basement", brand: "Kenmore", size: 31)
garage = Fridge.create(location: "garage", brand: "Maytag", size: 21)
pantry = Fridge.create(location: "pantry", brand: "Samsung", size: 11)

end
end
