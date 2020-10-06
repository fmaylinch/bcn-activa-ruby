# See: https://webapps-for-beginners.rubymonstas.org/sinatra.html
# JSON: https://devblast.com/b/return-json-in-sinatra

require "sinatra"
require "erb"
require_relative "fake_sinatra"


fake_sinatra = FakeSinatra.new

fake_sinatra.get "/one" do
  fake_sinatra.erb :welcome, { }
end

fake_sinatra.get "/two" do
  fake_sinatra.erb :product_detail, { }
end

# puts fake_sinatra.simulate_http_request "/one"
# puts fake_sinatra.simulate_http_request "/two"


get "/" do
  # displays the welcome.erb template inside the layout.erb
  fake_sinatra.erb :welcome, { :locals => params }
end

get "/help" do
  "Help information"
end

get "/products" do
  "List of products"
end

get "/products/:id" do
  # displays the product_detail.erb template inside the layout.erb
  erb :product_detail, { :locals => params }
end
