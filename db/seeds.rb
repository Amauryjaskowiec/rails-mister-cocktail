# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
alcohols = %w(gin vodka tequila rum jager)
softs = %w(limo coca orange monster perrier)
toppings = %w(minth strawberry coconut cacao sugar zest tabasco)

alcohols.each do |ingredient|
  Ingredient.create(name: ingredient)
end
softs.each do |ingredient|
  Ingredient.create(name: ingredient)
end
toppings.each do |ingredient|
  Ingredient.create(name: ingredient)
end

doses = %w( 2 3 4 5 6 7)

cocktails = %w(mojito sunrise pinacolada touchdown margarita)

cocktails.each do |cocktail|
  Cocktail.create(name: cocktail)
end

Cocktail.all.each do |c|
  Dose.create(description: doses.sample.first, cocktail: c, ingredient: Ingredient.where(name: alcohols.sample).first)
  Dose.create(description: doses.sample.first, cocktail: c, ingredient: Ingredient.where(name: softs.sample).first)
  Dose.create(description: doses.sample.first, cocktail: c, ingredient: Ingredient.where(name: toppings.sample).first)
end
