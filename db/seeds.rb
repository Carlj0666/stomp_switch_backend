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

Pedal.create([
    {name: 'Zoia', price: 499.99,  effect: 'Multi', brand: empress, image_link: "https://cdn.shopify.com/s/files/1/0028/5462/products/ZOIA_top_down_cropped_scaled.jpg?v=1553767198"},
    {name: 'Iconoclast', price: 199.99, effect: 'Speaker Cab Emulator', brand: neunaber, image_link: "https://cdn.shopify.com/s/files/1/0429/0425/products/Iconoclast_Angle_x1100.jpg?v=1594293754"},
    {name: 'Descent Reverb/Octave Machine', price: 299.99,  effect: 'Reverb/Octave', brand: walrus, image_link: "https://cdn.shopify.com/s/files/1/0906/8480/products/Descent_new_a9d63ee2-6105-4c81-917b-62e4b4aa53d1_1800x.png?v=1571274640"}
])