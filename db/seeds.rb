# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all
RecipeIngredient.destroy_all
Allergen.destroy_all

5.times do
  User.create(name: Faker::Name.first_name)
end

5.times do |x|
  Recipe.create(name: Faker::Food.dish, user_id: x+1)
end

5.times do

  Ingredient.create(name: Faker::Food.ingredient)
end

5.times do |x|
Allergen.create(user_id: x+1, ingredient_id: x+1)
end


RecipeIngredient.create(recipe_id: 1, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 4, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 5, ingredient_id: 1)







# 5.times { User.create(name: Faker::Name.first_name) }
#
# User.all.each do |u|
#   rand(1..5).times { Recipe.create(name: Faker::Food.dish, user_id: u.id)}
#   rand(3..10).times { Ingredient.create(name: Faker::Food.ingredient)}
# end
#
#
# Recipe.all.each do |r|
#   Ingredient.all.each do |i|
#     rand(1..8).times { RecipeIngredient.create(recipe_id: r.id, ingredient_id: i.id)}
#   end
# end
# # 20.times do |x|
# # RecipeIngredient.create(recipe_id: x+1, ingredient_id: x+1)
# # end
#
# User.all.each do |u|
#   Ingredient.all.each do |i|
#     rand(1..8).times { Allergen.create(user_id: u.id, ingredient_id: i.id) }
#   end
# end




#
# Ingredient.all.each do |i|
#   5.times { Allergen.create(ingredient_id: i.id)}
# end
#
# User.all.each do |u|
#   Allergen.all.each do |a|
#     a[:user_id] = u.id
#   end
# end
#
# Recipe.all.each do |r|
#   5.times { RecipeIngredient.create(recipe_id: r.id)}
# end
#
# Ingredient.all.each do |i|
#   Recipe.all.each do |r|
#   r[:ingredient_id] = i
# end
# end
