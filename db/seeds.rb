# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

empress = Brand.create(name: 'Empress')
neunaber = Brand.create(name: 'Neunaber')
walrus = Brand.create(name: 'Walrus')

# ADD PEDALS

zoia = Pedal.create({name: 'Zoia', price: 499.00, effect: "Multi"})

Pedal.create([
    {name: 'Zoia', price: 499.99,  effect: 'Multi', brand: empress},
    {name: 'Immerse', price: 199.99, effect: 'Reverb', brand: neunaber},
    {name: 'Slarp', price: 349.99,  effect: 'Delay', brand: walrus},
])