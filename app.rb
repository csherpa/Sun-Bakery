require 'sinatra'
require_relative './cookies.rb'
require_relative './cakes.rb'
require_relative './muffins.rb'
require_relative './bakery_menu.rb'


products = Menu.new

get '/' do 
    erb :index
end
    
get '/home' do
    erb :index
end

get '/cookies' do
    $edible_flower = products.add_cookie('Edible Flower Cookie', '$3.00/each' , 'Shortbread cookie with edible flowers such as lavendar, rose petals and chamomile')
    $turtle_cookie = products.add_cookie('Chocolate Turtle Cookie', '$2.00/each', 'Chocolate cookie filled with pecans and raisins')
    $caramel_stuffed = products.add_cookie('Caramel Stuffed Double Chocolate Chip Cookie', '$2.00/each', 'Delicious cookie which is richly filled with caramel')
    erb :cookies
end

get '/cakes' do
    $black_forest = products.add_cake('Black Forest Cake', '$25.00', 'Chocolate Sponge Cake with vanilla cream and milk chocolate mousse')
    $cheese_cake = products.add_cake('Cheese Cake','$25.00', 'Made with Oreo crumbs and cheese filling')
    $tiramisu_cake = products.add_cake('Tiramisu Cake', '$25.00', 'Delicious coffee-flavoured italian cake')
    erb :cakes
end

get '/muffins' do
    $lemon_blueberry = products.add_muffins('Lemon Blueberry Muffins', '$1.75/each', 'Made of fresh blueberries and lemon crumble topping')
    $coffee_crumb = products.add_muffins('Coffee Crumb Muffins', '$1.75/each', 'Coffee cake muffins with crumble topping are easy and delicious')
    $quinoa_muffin = products.add_muffins('Quinoa Muffins', '$1.75/each', 'Healthy muffins that are the perfect breakfast treat')
    erb :muffins
end
