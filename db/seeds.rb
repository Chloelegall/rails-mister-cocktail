require 'json'
require 'open-uri'
require 'faker'
puts "clearing db"
Ingredient.destroy_all


puts "importing great ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
objs = JSON.parse(json)
 objs['drinks'].each do |obj|
 new= Ingredient.create!({name: obj['strIngredient1']})

 end

puts "job's done for ingredients"

puts "cocktails now"

10.times do
 Cocktail.create!({name: Faker::Name.unique.name})

end

puts "finaly done"
