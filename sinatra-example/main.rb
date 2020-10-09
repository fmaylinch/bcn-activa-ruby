# See: https://webapps-for-beginners.rubymonstas.org/sinatra.html
# JSON: https://devblast.com/b/return-json-in-sinatra

require "sinatra"
require "erb"
require_relative "fake_sinatra"
require "json"

require "sinatra/activerecord"
require_relative "db/models"

# http://sinatrarb.com/configuration.html
# If you want to test from other computers in your local network.
# You can also use the command line option: -o "0.0.0.0"
#set :bind, '0.0.0.0'


# routes

get "/" do
  # displays the welcome.erb template inside the layout.erb
  erb :welcome, { :locals => params }
end

get "/users/:id" do
  user = User.find_by(id: params[:id])
  user.name
end

get "/users" do
  users = User.all
  users.map { |u| "#{u.id} #{u.name} #{u.age}" }.join(", ")
end

get "/products/:id" do
  # displays the product_detail.erb template inside the layout.erb
  erb :product_detail, { :locals => params }
end


# FakeSinatra

fake_sinatra = FakeSinatra.new

fake_sinatra.get "/one" do
  fake_sinatra.erb :welcome, { }
end

fake_sinatra.get "/two" do
  fake_sinatra.erb :product_detail, { }
end

# simulate that I use the browser to go to this path
# puts fake_sinatra.simulate_http_request "/one"
# puts fake_sinatra.simulate_http_request "/two"
